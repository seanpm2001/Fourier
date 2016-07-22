// Copyright © 2016, Jakob Bornecrantz.  All rights reserved.
// See copyright notice in src/fourier/license.volt (BOOST ver. 1.0).
module main;

import watt.io;
import watt.io.file : read;
import watt.text.getopt;

import lib.clang;

import fourier.walker;
import fourier.util;
import fourier.volt;
import fourier.compare;

fn main(args: string[]) i32
{
	printDebug, printUsage : bool;
	moduleName, jsonName : string;
	getopt(ref args, "debug|d", ref printDebug);
	getopt(ref args, "help|h", ref printUsage);
	getopt(ref args, "module|m", ref moduleName);
	getopt(ref args, "json|j", ref jsonName);
	if (printUsage) {
		usage();
		return 0;
	}
	arg := args.length > 1 ? args[1] : "test/test.c";
	if (jsonName != "") {
		listDiscrepancies(arg, jsonName);
	} else {
		test(arg, printDebug, moduleName);
	}
	return 0;
}

fn usage()
{
	writeln("fourier [flags] <C source file>");
	writeln("\t--debug|-d   print additional information about the source file.");
	writeln("\t--help|-h    print this message and exit.");
	writeln("\t--module|-m  override the default module name for the created module.");
	writeln("\t--json|-j    supply a JSON file to compare the header file against.");
}

fn jsonTest(header: string, jsonPath: string, printDebug: bool, moduleName: string)
{
	json := cast(string)read(jsonPath);  // TODO: Error handling.
	mods: Base[] = parse(json);
	indent := 0;
	fn processModules(modules: Base[])
	{
		foreach (mod; modules) {
			foreach (0 .. indent) {
				write("  ");
			}
			writef("%s ", getStringFromKind(mod.kind));
			named := cast(Named)mod;
			if (named !is null) {
				writef("\"%s\"", named.name);
			}
			writeln("");
			parent := cast(Parent)mod;
			if (parent is null) {
				continue;
			}
			indent++;
			processModules(parent.children);
			indent--;
		}
	}
	processModules(mods);
}

fn test(file: string, printDebug: bool, moduleName: string)
{
	index := clang_createIndex(0, 0);
	args := ["-I.".ptr];
	tu := clang_parseTranslationUnit(index,
		file.ptr, args.ptr, cast(int)args.length,
		null, 0, CXTranslationUnit_None);

	tu.printDiag(file);
	tu.walk(printDebug, moduleName != "" ? moduleName : getModuleName(file));

	clang_disposeTranslationUnit(tu);
	clang_disposeIndex(index);
}

fn printDiag(tu: CXTranslationUnit, file: string)
{
	count := clang_getNumDiagnostics(tu);

	foreach (i; 0 .. count) {
		loc: CXSourceLocation;
		diag: CXDiagnostic;
		text: CXString;
		info: string;
		line, column: u32;

		diag = clang_getDiagnostic(tu, i);
		loc = clang_getDiagnosticLocation(diag);
		text = clang_getDiagnosticSpelling(diag);

		clang_getSpellingLocation(loc, null, &line, &column, null);
		info = getVoltString(text);

		error.writefln("%s:%s:%s info %s", file, line, column, info);
	}
}