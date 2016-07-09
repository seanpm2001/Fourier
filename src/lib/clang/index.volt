// Copyright © 2016, Jakob Bornecrantz.  All rights reserved.
// See copyright notice in src/fourier/license.volt (BOOST ver. 1.0).
module lib.clang.index;

public import lib.clang.c.Index;


//CXAvailabilityKind
alias CXAvailability_Available = CXAvailabilityKind.CXAvailability_Available;
alias CXAvailability_Deprecated = CXAvailabilityKind.CXAvailability_Deprecated;
alias CXAvailability_NotAvailable = CXAvailabilityKind.CXAvailability_NotAvailable;
alias CXAvailability_NotAccessible = CXAvailabilityKind.CXAvailability_NotAccessible;

//CXGlobalOptFlags
alias CXGlobalOpt_None = CXGlobalOptFlags.CXGlobalOpt_None;
alias CXGlobalOpt_ThreadBackgroundPriorityForIndexing = CXGlobalOptFlags.CXGlobalOpt_ThreadBackgroundPriorityForIndexing;
alias CXGlobalOpt_ThreadBackgroundPriorityForEditing = CXGlobalOptFlags.CXGlobalOpt_ThreadBackgroundPriorityForEditing;
alias CXGlobalOpt_ThreadBackgroundPriorityForAll = CXGlobalOptFlags.CXGlobalOpt_ThreadBackgroundPriorityForAll;

//CXDiagnosticSeverity
alias CXDiagnostic_Ignored = CXDiagnosticSeverity.CXDiagnostic_Ignored;
alias CXDiagnostic_Note = CXDiagnosticSeverity.CXDiagnostic_Note;
alias CXDiagnostic_Warning = CXDiagnosticSeverity.CXDiagnostic_Warning;
alias CXDiagnostic_Error = CXDiagnosticSeverity.CXDiagnostic_Error;
alias CXDiagnostic_Fatal = CXDiagnosticSeverity.CXDiagnostic_Fatal;

//CXLoadDiag_Error
alias CXLoadDiag_None = CXLoadDiag_Error.CXLoadDiag_None;
alias CXLoadDiag_Unknown = CXLoadDiag_Error.CXLoadDiag_Unknown;
alias CXLoadDiag_CannotLoad = CXLoadDiag_Error.CXLoadDiag_CannotLoad;
alias CXLoadDiag_InvalidFile = CXLoadDiag_Error.CXLoadDiag_InvalidFile;

//CXDiagnosticDisplayOptions
alias CXDiagnostic_DisplaySourceLocation = CXDiagnosticDisplayOptions.CXDiagnostic_DisplaySourceLocation;
alias CXDiagnostic_DisplayColumn = CXDiagnosticDisplayOptions.CXDiagnostic_DisplayColumn;
alias CXDiagnostic_DisplaySourceRanges = CXDiagnosticDisplayOptions.CXDiagnostic_DisplaySourceRanges;
alias CXDiagnostic_DisplayOption = CXDiagnosticDisplayOptions.CXDiagnostic_DisplayOption;
alias CXDiagnostic_DisplayCategoryId = CXDiagnosticDisplayOptions.CXDiagnostic_DisplayCategoryId;
alias CXDiagnostic_DisplayCategoryName = CXDiagnosticDisplayOptions.CXDiagnostic_DisplayCategoryName;

//CXTranslationUnit_Flags
alias CXTranslationUnit_None = CXTranslationUnit_Flags.CXTranslationUnit_None;
alias CXTranslationUnit_DetailedPreprocessingRecord = CXTranslationUnit_Flags.CXTranslationUnit_DetailedPreprocessingRecord;
alias CXTranslationUnit_Incomplete = CXTranslationUnit_Flags.CXTranslationUnit_Incomplete;
alias CXTranslationUnit_PrecompiledPreamble = CXTranslationUnit_Flags.CXTranslationUnit_PrecompiledPreamble;
alias CXTranslationUnit_CacheCompletionResults = CXTranslationUnit_Flags.CXTranslationUnit_CacheCompletionResults;
alias CXTranslationUnit_ForSerialization = CXTranslationUnit_Flags.CXTranslationUnit_ForSerialization;
alias CXTranslationUnit_CXXChainedPCH = CXTranslationUnit_Flags.CXTranslationUnit_CXXChainedPCH;
alias CXTranslationUnit_SkipFunctionBodies = CXTranslationUnit_Flags.CXTranslationUnit_SkipFunctionBodies;
alias CXTranslationUnit_IncludeBriefCommentsInCodeCompletion = CXTranslationUnit_Flags.CXTranslationUnit_IncludeBriefCommentsInCodeCompletion;
alias CXTranslationUnit_CreatePreambleOnFirstParse = CXTranslationUnit_Flags.CXTranslationUnit_CreatePreambleOnFirstParse;

//CXSaveError
alias CXSaveError_None = CXSaveError.CXSaveError_None;
alias CXSaveError_Unknown = CXSaveError.CXSaveError_Unknown;
alias CXSaveError_TranslationErrors = CXSaveError.CXSaveError_TranslationErrors;
alias CXSaveError_InvalidTU = CXSaveError.CXSaveError_InvalidTU;

//CXReparse_Flags
alias CXReparse_None = CXReparse_Flags.CXReparse_None;

//CXTUResourceUsageKind
alias CXTUResourceUsage_AST = CXTUResourceUsageKind.CXTUResourceUsage_AST;
alias CXTUResourceUsage_Identifiers = CXTUResourceUsageKind.CXTUResourceUsage_Identifiers;
alias CXTUResourceUsage_Selectors = CXTUResourceUsageKind.CXTUResourceUsage_Selectors;
alias CXTUResourceUsage_GlobalCompletionResults = CXTUResourceUsageKind.CXTUResourceUsage_GlobalCompletionResults;
alias CXTUResourceUsage_SourceManagerContentCache = CXTUResourceUsageKind.CXTUResourceUsage_SourceManagerContentCache;
alias CXTUResourceUsage_AST_SideTables = CXTUResourceUsageKind.CXTUResourceUsage_AST_SideTables;
alias CXTUResourceUsage_SourceManager_Membuffer_Malloc = CXTUResourceUsageKind.CXTUResourceUsage_SourceManager_Membuffer_Malloc;
alias CXTUResourceUsage_SourceManager_Membuffer_MMap = CXTUResourceUsageKind.CXTUResourceUsage_SourceManager_Membuffer_MMap;
alias CXTUResourceUsage_ExternalASTSource_Membuffer_Malloc = CXTUResourceUsageKind.CXTUResourceUsage_ExternalASTSource_Membuffer_Malloc;
alias CXTUResourceUsage_ExternalASTSource_Membuffer_MMap = CXTUResourceUsageKind.CXTUResourceUsage_ExternalASTSource_Membuffer_MMap;
alias CXTUResourceUsage_Preprocessor = CXTUResourceUsageKind.CXTUResourceUsage_Preprocessor;
alias CXTUResourceUsage_PreprocessingRecord = CXTUResourceUsageKind.CXTUResourceUsage_PreprocessingRecord;
alias CXTUResourceUsage_SourceManager_DataStructures = CXTUResourceUsageKind.CXTUResourceUsage_SourceManager_DataStructures;
alias CXTUResourceUsage_Preprocessor_HeaderSearch = CXTUResourceUsageKind.CXTUResourceUsage_Preprocessor_HeaderSearch;
alias CXTUResourceUsage_MEMORY_IN_BYTES_BEGIN = CXTUResourceUsageKind.CXTUResourceUsage_MEMORY_IN_BYTES_BEGIN;
alias CXTUResourceUsage_MEMORY_IN_BYTES_END = CXTUResourceUsageKind.CXTUResourceUsage_MEMORY_IN_BYTES_END;
alias CXTUResourceUsage_First = CXTUResourceUsageKind.CXTUResourceUsage_First;
alias CXTUResourceUsage_Last = CXTUResourceUsageKind.CXTUResourceUsage_Last;

//CXCursorKind
alias CXCursor_UnexposedDecl = CXCursorKind.CXCursor_UnexposedDecl;
alias CXCursor_StructDecl = CXCursorKind.CXCursor_StructDecl;
alias CXCursor_UnionDecl = CXCursorKind.CXCursor_UnionDecl;
alias CXCursor_ClassDecl = CXCursorKind.CXCursor_ClassDecl;
alias CXCursor_EnumDecl = CXCursorKind.CXCursor_EnumDecl;
alias CXCursor_FieldDecl = CXCursorKind.CXCursor_FieldDecl;
alias CXCursor_EnumConstantDecl = CXCursorKind.CXCursor_EnumConstantDecl;
alias CXCursor_FunctionDecl = CXCursorKind.CXCursor_FunctionDecl;
alias CXCursor_VarDecl = CXCursorKind.CXCursor_VarDecl;
alias CXCursor_ParmDecl = CXCursorKind.CXCursor_ParmDecl;
alias CXCursor_ObjCInterfaceDecl = CXCursorKind.CXCursor_ObjCInterfaceDecl;
alias CXCursor_ObjCCategoryDecl = CXCursorKind.CXCursor_ObjCCategoryDecl;
alias CXCursor_ObjCProtocolDecl = CXCursorKind.CXCursor_ObjCProtocolDecl;
alias CXCursor_ObjCPropertyDecl = CXCursorKind.CXCursor_ObjCPropertyDecl;
alias CXCursor_ObjCIvarDecl = CXCursorKind.CXCursor_ObjCIvarDecl;
alias CXCursor_ObjCInstanceMethodDecl = CXCursorKind.CXCursor_ObjCInstanceMethodDecl;
alias CXCursor_ObjCClassMethodDecl = CXCursorKind.CXCursor_ObjCClassMethodDecl;
alias CXCursor_ObjCImplementationDecl = CXCursorKind.CXCursor_ObjCImplementationDecl;
alias CXCursor_ObjCCategoryImplDecl = CXCursorKind.CXCursor_ObjCCategoryImplDecl;
alias CXCursor_TypedefDecl = CXCursorKind.CXCursor_TypedefDecl;
alias CXCursor_CXXMethod = CXCursorKind.CXCursor_CXXMethod;
alias CXCursor_Namespace = CXCursorKind.CXCursor_Namespace;
alias CXCursor_LinkageSpec = CXCursorKind.CXCursor_LinkageSpec;
alias CXCursor_Constructor = CXCursorKind.CXCursor_Constructor;
alias CXCursor_Destructor = CXCursorKind.CXCursor_Destructor;
alias CXCursor_ConversionFunction = CXCursorKind.CXCursor_ConversionFunction;
alias CXCursor_TemplateTypeParameter = CXCursorKind.CXCursor_TemplateTypeParameter;
alias CXCursor_NonTypeTemplateParameter = CXCursorKind.CXCursor_NonTypeTemplateParameter;
alias CXCursor_TemplateTemplateParameter = CXCursorKind.CXCursor_TemplateTemplateParameter;
alias CXCursor_FunctionTemplate = CXCursorKind.CXCursor_FunctionTemplate;
alias CXCursor_ClassTemplate = CXCursorKind.CXCursor_ClassTemplate;
alias CXCursor_ClassTemplatePartialSpecialization = CXCursorKind.CXCursor_ClassTemplatePartialSpecialization;
alias CXCursor_NamespaceAlias = CXCursorKind.CXCursor_NamespaceAlias;
alias CXCursor_UsingDirective = CXCursorKind.CXCursor_UsingDirective;
alias CXCursor_UsingDeclaration = CXCursorKind.CXCursor_UsingDeclaration;
alias CXCursor_TypeAliasDecl = CXCursorKind.CXCursor_TypeAliasDecl;
alias CXCursor_ObjCSynthesizeDecl = CXCursorKind.CXCursor_ObjCSynthesizeDecl;
alias CXCursor_ObjCDynamicDecl = CXCursorKind.CXCursor_ObjCDynamicDecl;
alias CXCursor_CXXAccessSpecifier = CXCursorKind.CXCursor_CXXAccessSpecifier;
alias CXCursor_FirstDecl = CXCursorKind.CXCursor_FirstDecl;
alias CXCursor_LastDecl = CXCursorKind.CXCursor_LastDecl;
alias CXCursor_FirstRef = CXCursorKind.CXCursor_FirstRef;
alias CXCursor_ObjCSuperClassRef = CXCursorKind.CXCursor_ObjCSuperClassRef;
alias CXCursor_ObjCProtocolRef = CXCursorKind.CXCursor_ObjCProtocolRef;
alias CXCursor_ObjCClassRef = CXCursorKind.CXCursor_ObjCClassRef;
alias CXCursor_TypeRef = CXCursorKind.CXCursor_TypeRef;
alias CXCursor_CXXBaseSpecifier = CXCursorKind.CXCursor_CXXBaseSpecifier;
alias CXCursor_TemplateRef = CXCursorKind.CXCursor_TemplateRef;
alias CXCursor_NamespaceRef = CXCursorKind.CXCursor_NamespaceRef;
alias CXCursor_MemberRef = CXCursorKind.CXCursor_MemberRef;
alias CXCursor_LabelRef = CXCursorKind.CXCursor_LabelRef;
alias CXCursor_OverloadedDeclRef = CXCursorKind.CXCursor_OverloadedDeclRef;
alias CXCursor_VariableRef = CXCursorKind.CXCursor_VariableRef;
alias CXCursor_LastRef = CXCursorKind.CXCursor_LastRef;
alias CXCursor_FirstInvalid = CXCursorKind.CXCursor_FirstInvalid;
alias CXCursor_InvalidFile = CXCursorKind.CXCursor_InvalidFile;
alias CXCursor_NoDeclFound = CXCursorKind.CXCursor_NoDeclFound;
alias CXCursor_NotImplemented = CXCursorKind.CXCursor_NotImplemented;
alias CXCursor_InvalidCode = CXCursorKind.CXCursor_InvalidCode;
alias CXCursor_LastInvalid = CXCursorKind.CXCursor_LastInvalid;
alias CXCursor_FirstExpr = CXCursorKind.CXCursor_FirstExpr;
alias CXCursor_UnexposedExpr = CXCursorKind.CXCursor_UnexposedExpr;
alias CXCursor_DeclRefExpr = CXCursorKind.CXCursor_DeclRefExpr;
alias CXCursor_MemberRefExpr = CXCursorKind.CXCursor_MemberRefExpr;
alias CXCursor_CallExpr = CXCursorKind.CXCursor_CallExpr;
alias CXCursor_ObjCMessageExpr = CXCursorKind.CXCursor_ObjCMessageExpr;
alias CXCursor_BlockExpr = CXCursorKind.CXCursor_BlockExpr;
alias CXCursor_IntegerLiteral = CXCursorKind.CXCursor_IntegerLiteral;
alias CXCursor_FloatingLiteral = CXCursorKind.CXCursor_FloatingLiteral;
alias CXCursor_ImaginaryLiteral = CXCursorKind.CXCursor_ImaginaryLiteral;
alias CXCursor_StringLiteral = CXCursorKind.CXCursor_StringLiteral;
alias CXCursor_CharacterLiteral = CXCursorKind.CXCursor_CharacterLiteral;
alias CXCursor_ParenExpr = CXCursorKind.CXCursor_ParenExpr;
alias CXCursor_UnaryOperator = CXCursorKind.CXCursor_UnaryOperator;
alias CXCursor_ArraySubscriptExpr = CXCursorKind.CXCursor_ArraySubscriptExpr;
alias CXCursor_BinaryOperator = CXCursorKind.CXCursor_BinaryOperator;
alias CXCursor_CompoundAssignOperator = CXCursorKind.CXCursor_CompoundAssignOperator;
alias CXCursor_ConditionalOperator = CXCursorKind.CXCursor_ConditionalOperator;
alias CXCursor_CStyleCastExpr = CXCursorKind.CXCursor_CStyleCastExpr;
alias CXCursor_CompoundLiteralExpr = CXCursorKind.CXCursor_CompoundLiteralExpr;
alias CXCursor_InitListExpr = CXCursorKind.CXCursor_InitListExpr;
alias CXCursor_AddrLabelExpr = CXCursorKind.CXCursor_AddrLabelExpr;
alias CXCursor_StmtExpr = CXCursorKind.CXCursor_StmtExpr;
alias CXCursor_GenericSelectionExpr = CXCursorKind.CXCursor_GenericSelectionExpr;
alias CXCursor_GNUNullExpr = CXCursorKind.CXCursor_GNUNullExpr;
alias CXCursor_CXXStaticCastExpr = CXCursorKind.CXCursor_CXXStaticCastExpr;
alias CXCursor_CXXDynamicCastExpr = CXCursorKind.CXCursor_CXXDynamicCastExpr;
alias CXCursor_CXXReinterpretCastExpr = CXCursorKind.CXCursor_CXXReinterpretCastExpr;
alias CXCursor_CXXConstCastExpr = CXCursorKind.CXCursor_CXXConstCastExpr;
alias CXCursor_CXXFunctionalCastExpr = CXCursorKind.CXCursor_CXXFunctionalCastExpr;
alias CXCursor_CXXTypeidExpr = CXCursorKind.CXCursor_CXXTypeidExpr;
alias CXCursor_CXXBoolLiteralExpr = CXCursorKind.CXCursor_CXXBoolLiteralExpr;
alias CXCursor_CXXNullPtrLiteralExpr = CXCursorKind.CXCursor_CXXNullPtrLiteralExpr;
alias CXCursor_CXXThisExpr = CXCursorKind.CXCursor_CXXThisExpr;
alias CXCursor_CXXThrowExpr = CXCursorKind.CXCursor_CXXThrowExpr;
alias CXCursor_CXXNewExpr = CXCursorKind.CXCursor_CXXNewExpr;
alias CXCursor_CXXDeleteExpr = CXCursorKind.CXCursor_CXXDeleteExpr;
alias CXCursor_UnaryExpr = CXCursorKind.CXCursor_UnaryExpr;
alias CXCursor_ObjCStringLiteral = CXCursorKind.CXCursor_ObjCStringLiteral;
alias CXCursor_ObjCEncodeExpr = CXCursorKind.CXCursor_ObjCEncodeExpr;
alias CXCursor_ObjCSelectorExpr = CXCursorKind.CXCursor_ObjCSelectorExpr;
alias CXCursor_ObjCProtocolExpr = CXCursorKind.CXCursor_ObjCProtocolExpr;
alias CXCursor_ObjCBridgedCastExpr = CXCursorKind.CXCursor_ObjCBridgedCastExpr;
alias CXCursor_PackExpansionExpr = CXCursorKind.CXCursor_PackExpansionExpr;
alias CXCursor_SizeOfPackExpr = CXCursorKind.CXCursor_SizeOfPackExpr;
alias CXCursor_LambdaExpr = CXCursorKind.CXCursor_LambdaExpr;
alias CXCursor_ObjCBoolLiteralExpr = CXCursorKind.CXCursor_ObjCBoolLiteralExpr;
alias CXCursor_ObjCSelfExpr = CXCursorKind.CXCursor_ObjCSelfExpr;
alias CXCursor_OMPArraySectionExpr = CXCursorKind.CXCursor_OMPArraySectionExpr;
alias CXCursor_LastExpr = CXCursorKind.CXCursor_LastExpr;
alias CXCursor_FirstStmt = CXCursorKind.CXCursor_FirstStmt;
alias CXCursor_UnexposedStmt = CXCursorKind.CXCursor_UnexposedStmt;
alias CXCursor_LabelStmt = CXCursorKind.CXCursor_LabelStmt;
alias CXCursor_CompoundStmt = CXCursorKind.CXCursor_CompoundStmt;
alias CXCursor_CaseStmt = CXCursorKind.CXCursor_CaseStmt;
alias CXCursor_DefaultStmt = CXCursorKind.CXCursor_DefaultStmt;
alias CXCursor_IfStmt = CXCursorKind.CXCursor_IfStmt;
alias CXCursor_SwitchStmt = CXCursorKind.CXCursor_SwitchStmt;
alias CXCursor_WhileStmt = CXCursorKind.CXCursor_WhileStmt;
alias CXCursor_DoStmt = CXCursorKind.CXCursor_DoStmt;
alias CXCursor_ForStmt = CXCursorKind.CXCursor_ForStmt;
alias CXCursor_GotoStmt = CXCursorKind.CXCursor_GotoStmt;
alias CXCursor_IndirectGotoStmt = CXCursorKind.CXCursor_IndirectGotoStmt;
alias CXCursor_ContinueStmt = CXCursorKind.CXCursor_ContinueStmt;
alias CXCursor_BreakStmt = CXCursorKind.CXCursor_BreakStmt;
alias CXCursor_ReturnStmt = CXCursorKind.CXCursor_ReturnStmt;
alias CXCursor_GCCAsmStmt = CXCursorKind.CXCursor_GCCAsmStmt;
alias CXCursor_AsmStmt = CXCursorKind.CXCursor_AsmStmt;
alias CXCursor_ObjCAtTryStmt = CXCursorKind.CXCursor_ObjCAtTryStmt;
alias CXCursor_ObjCAtCatchStmt = CXCursorKind.CXCursor_ObjCAtCatchStmt;
alias CXCursor_ObjCAtFinallyStmt = CXCursorKind.CXCursor_ObjCAtFinallyStmt;
alias CXCursor_ObjCAtThrowStmt = CXCursorKind.CXCursor_ObjCAtThrowStmt;
alias CXCursor_ObjCAtSynchronizedStmt = CXCursorKind.CXCursor_ObjCAtSynchronizedStmt;
alias CXCursor_ObjCAutoreleasePoolStmt = CXCursorKind.CXCursor_ObjCAutoreleasePoolStmt;
alias CXCursor_ObjCForCollectionStmt = CXCursorKind.CXCursor_ObjCForCollectionStmt;
alias CXCursor_CXXCatchStmt = CXCursorKind.CXCursor_CXXCatchStmt;
alias CXCursor_CXXTryStmt = CXCursorKind.CXCursor_CXXTryStmt;
alias CXCursor_CXXForRangeStmt = CXCursorKind.CXCursor_CXXForRangeStmt;
alias CXCursor_SEHTryStmt = CXCursorKind.CXCursor_SEHTryStmt;
alias CXCursor_SEHExceptStmt = CXCursorKind.CXCursor_SEHExceptStmt;
alias CXCursor_SEHFinallyStmt = CXCursorKind.CXCursor_SEHFinallyStmt;
alias CXCursor_MSAsmStmt = CXCursorKind.CXCursor_MSAsmStmt;
alias CXCursor_NullStmt = CXCursorKind.CXCursor_NullStmt;
alias CXCursor_DeclStmt = CXCursorKind.CXCursor_DeclStmt;
alias CXCursor_OMPParallelDirective = CXCursorKind.CXCursor_OMPParallelDirective;
alias CXCursor_OMPSimdDirective = CXCursorKind.CXCursor_OMPSimdDirective;
alias CXCursor_OMPForDirective = CXCursorKind.CXCursor_OMPForDirective;
alias CXCursor_OMPSectionsDirective = CXCursorKind.CXCursor_OMPSectionsDirective;
alias CXCursor_OMPSectionDirective = CXCursorKind.CXCursor_OMPSectionDirective;
alias CXCursor_OMPSingleDirective = CXCursorKind.CXCursor_OMPSingleDirective;
alias CXCursor_OMPParallelForDirective = CXCursorKind.CXCursor_OMPParallelForDirective;
alias CXCursor_OMPParallelSectionsDirective = CXCursorKind.CXCursor_OMPParallelSectionsDirective;
alias CXCursor_OMPTaskDirective = CXCursorKind.CXCursor_OMPTaskDirective;
alias CXCursor_OMPMasterDirective = CXCursorKind.CXCursor_OMPMasterDirective;
alias CXCursor_OMPCriticalDirective = CXCursorKind.CXCursor_OMPCriticalDirective;
alias CXCursor_OMPTaskyieldDirective = CXCursorKind.CXCursor_OMPTaskyieldDirective;
alias CXCursor_OMPBarrierDirective = CXCursorKind.CXCursor_OMPBarrierDirective;
alias CXCursor_OMPTaskwaitDirective = CXCursorKind.CXCursor_OMPTaskwaitDirective;
alias CXCursor_OMPFlushDirective = CXCursorKind.CXCursor_OMPFlushDirective;
alias CXCursor_SEHLeaveStmt = CXCursorKind.CXCursor_SEHLeaveStmt;
alias CXCursor_OMPOrderedDirective = CXCursorKind.CXCursor_OMPOrderedDirective;
alias CXCursor_OMPAtomicDirective = CXCursorKind.CXCursor_OMPAtomicDirective;
alias CXCursor_OMPForSimdDirective = CXCursorKind.CXCursor_OMPForSimdDirective;
alias CXCursor_OMPParallelForSimdDirective = CXCursorKind.CXCursor_OMPParallelForSimdDirective;
alias CXCursor_OMPTargetDirective = CXCursorKind.CXCursor_OMPTargetDirective;
alias CXCursor_OMPTeamsDirective = CXCursorKind.CXCursor_OMPTeamsDirective;
alias CXCursor_OMPTaskgroupDirective = CXCursorKind.CXCursor_OMPTaskgroupDirective;
alias CXCursor_OMPCancellationPointDirective = CXCursorKind.CXCursor_OMPCancellationPointDirective;
alias CXCursor_OMPCancelDirective = CXCursorKind.CXCursor_OMPCancelDirective;
alias CXCursor_OMPTargetDataDirective = CXCursorKind.CXCursor_OMPTargetDataDirective;
alias CXCursor_OMPTaskLoopDirective = CXCursorKind.CXCursor_OMPTaskLoopDirective;
alias CXCursor_OMPTaskLoopSimdDirective = CXCursorKind.CXCursor_OMPTaskLoopSimdDirective;
alias CXCursor_OMPDistributeDirective = CXCursorKind.CXCursor_OMPDistributeDirective;
alias CXCursor_LastStmt = CXCursorKind.CXCursor_LastStmt;
alias CXCursor_TranslationUnit = CXCursorKind.CXCursor_TranslationUnit;
alias CXCursor_FirstAttr = CXCursorKind.CXCursor_FirstAttr;
alias CXCursor_UnexposedAttr = CXCursorKind.CXCursor_UnexposedAttr;
alias CXCursor_IBActionAttr = CXCursorKind.CXCursor_IBActionAttr;
alias CXCursor_IBOutletAttr = CXCursorKind.CXCursor_IBOutletAttr;
alias CXCursor_IBOutletCollectionAttr = CXCursorKind.CXCursor_IBOutletCollectionAttr;
alias CXCursor_CXXFinalAttr = CXCursorKind.CXCursor_CXXFinalAttr;
alias CXCursor_CXXOverrideAttr = CXCursorKind.CXCursor_CXXOverrideAttr;
alias CXCursor_AnnotateAttr = CXCursorKind.CXCursor_AnnotateAttr;
alias CXCursor_AsmLabelAttr = CXCursorKind.CXCursor_AsmLabelAttr;
alias CXCursor_PackedAttr = CXCursorKind.CXCursor_PackedAttr;
alias CXCursor_PureAttr = CXCursorKind.CXCursor_PureAttr;
alias CXCursor_ConstAttr = CXCursorKind.CXCursor_ConstAttr;
alias CXCursor_NoDuplicateAttr = CXCursorKind.CXCursor_NoDuplicateAttr;
alias CXCursor_CUDAConstantAttr = CXCursorKind.CXCursor_CUDAConstantAttr;
alias CXCursor_CUDADeviceAttr = CXCursorKind.CXCursor_CUDADeviceAttr;
alias CXCursor_CUDAGlobalAttr = CXCursorKind.CXCursor_CUDAGlobalAttr;
alias CXCursor_CUDAHostAttr = CXCursorKind.CXCursor_CUDAHostAttr;
alias CXCursor_CUDASharedAttr = CXCursorKind.CXCursor_CUDASharedAttr;
alias CXCursor_VisibilityAttr = CXCursorKind.CXCursor_VisibilityAttr;
alias CXCursor_DLLExport = CXCursorKind.CXCursor_DLLExport;
alias CXCursor_DLLImport = CXCursorKind.CXCursor_DLLImport;
alias CXCursor_LastAttr = CXCursorKind.CXCursor_LastAttr;
alias CXCursor_PreprocessingDirective = CXCursorKind.CXCursor_PreprocessingDirective;
alias CXCursor_MacroDefinition = CXCursorKind.CXCursor_MacroDefinition;
alias CXCursor_MacroExpansion = CXCursorKind.CXCursor_MacroExpansion;
alias CXCursor_MacroInstantiation = CXCursorKind.CXCursor_MacroInstantiation;
alias CXCursor_InclusionDirective = CXCursorKind.CXCursor_InclusionDirective;
alias CXCursor_FirstPreprocessing = CXCursorKind.CXCursor_FirstPreprocessing;
alias CXCursor_LastPreprocessing = CXCursorKind.CXCursor_LastPreprocessing;
alias CXCursor_ModuleImportDecl = CXCursorKind.CXCursor_ModuleImportDecl;
alias CXCursor_TypeAliasTemplateDecl = CXCursorKind.CXCursor_TypeAliasTemplateDecl;
alias CXCursor_FirstExtraDecl = CXCursorKind.CXCursor_FirstExtraDecl;
alias CXCursor_LastExtraDecl = CXCursorKind.CXCursor_LastExtraDecl;
alias CXCursor_OverloadCandidate = CXCursorKind.CXCursor_OverloadCandidate;

//CXVisibilityKind
alias CXVisibility_Invalid = CXVisibilityKind.CXVisibility_Invalid;
alias CXVisibility_Hidden = CXVisibilityKind.CXVisibility_Hidden;
alias CXVisibility_Protected = CXVisibilityKind.CXVisibility_Protected;
alias CXVisibility_Default = CXVisibilityKind.CXVisibility_Default;

//CXLanguageKind
alias CXLanguage_Invalid = CXLanguageKind.CXLanguage_Invalid;
alias CXLanguage_C = CXLanguageKind.CXLanguage_C;
alias CXLanguage_ObjC = CXLanguageKind.CXLanguage_ObjC;
alias CXLanguage_CPlusPlus = CXLanguageKind.CXLanguage_CPlusPlus;

//CXTypeKind
alias CXType_Invalid = CXTypeKind.CXType_Invalid;
alias CXType_Unexposed = CXTypeKind.CXType_Unexposed;
alias CXType_Void = CXTypeKind.CXType_Void;
alias CXType_Bool = CXTypeKind.CXType_Bool;
alias CXType_Char_U = CXTypeKind.CXType_Char_U;
alias CXType_UChar = CXTypeKind.CXType_UChar;
alias CXType_Char16 = CXTypeKind.CXType_Char16;
alias CXType_Char32 = CXTypeKind.CXType_Char32;
alias CXType_UShort = CXTypeKind.CXType_UShort;
alias CXType_UInt = CXTypeKind.CXType_UInt;
alias CXType_ULong = CXTypeKind.CXType_ULong;
alias CXType_ULongLong = CXTypeKind.CXType_ULongLong;
alias CXType_UInt128 = CXTypeKind.CXType_UInt128;
alias CXType_Char_S = CXTypeKind.CXType_Char_S;
alias CXType_SChar = CXTypeKind.CXType_SChar;
alias CXType_WChar = CXTypeKind.CXType_WChar;
alias CXType_Short = CXTypeKind.CXType_Short;
alias CXType_Int = CXTypeKind.CXType_Int;
alias CXType_Long = CXTypeKind.CXType_Long;
alias CXType_LongLong = CXTypeKind.CXType_LongLong;
alias CXType_Int128 = CXTypeKind.CXType_Int128;
alias CXType_Float = CXTypeKind.CXType_Float;
alias CXType_Double = CXTypeKind.CXType_Double;
alias CXType_LongDouble = CXTypeKind.CXType_LongDouble;
alias CXType_NullPtr = CXTypeKind.CXType_NullPtr;
alias CXType_Overload = CXTypeKind.CXType_Overload;
alias CXType_Dependent = CXTypeKind.CXType_Dependent;
alias CXType_ObjCId = CXTypeKind.CXType_ObjCId;
alias CXType_ObjCClass = CXTypeKind.CXType_ObjCClass;
alias CXType_ObjCSel = CXTypeKind.CXType_ObjCSel;
alias CXType_FirstBuiltin = CXTypeKind.CXType_FirstBuiltin;
alias CXType_LastBuiltin = CXTypeKind.CXType_LastBuiltin;
alias CXType_Complex = CXTypeKind.CXType_Complex;
alias CXType_Pointer = CXTypeKind.CXType_Pointer;
alias CXType_BlockPointer = CXTypeKind.CXType_BlockPointer;
alias CXType_LValueReference = CXTypeKind.CXType_LValueReference;
alias CXType_RValueReference = CXTypeKind.CXType_RValueReference;
alias CXType_Record = CXTypeKind.CXType_Record;
alias CXType_Enum = CXTypeKind.CXType_Enum;
alias CXType_Typedef = CXTypeKind.CXType_Typedef;
alias CXType_ObjCInterface = CXTypeKind.CXType_ObjCInterface;
alias CXType_ObjCObjectPointer = CXTypeKind.CXType_ObjCObjectPointer;
alias CXType_FunctionNoProto = CXTypeKind.CXType_FunctionNoProto;
alias CXType_FunctionProto = CXTypeKind.CXType_FunctionProto;
alias CXType_ConstantArray = CXTypeKind.CXType_ConstantArray;
alias CXType_Vector = CXTypeKind.CXType_Vector;
alias CXType_IncompleteArray = CXTypeKind.CXType_IncompleteArray;
alias CXType_VariableArray = CXTypeKind.CXType_VariableArray;
alias CXType_DependentSizedArray = CXTypeKind.CXType_DependentSizedArray;
alias CXType_MemberPointer = CXTypeKind.CXType_MemberPointer;
alias CXType_Auto = CXTypeKind.CXType_Auto;

//CXCallingConv
alias CXCallingConv_Default = CXCallingConv.CXCallingConv_Default;
alias CXCallingConv_C = CXCallingConv.CXCallingConv_C;
alias CXCallingConv_X86StdCall = CXCallingConv.CXCallingConv_X86StdCall;
alias CXCallingConv_X86FastCall = CXCallingConv.CXCallingConv_X86FastCall;
alias CXCallingConv_X86ThisCall = CXCallingConv.CXCallingConv_X86ThisCall;
alias CXCallingConv_X86Pascal = CXCallingConv.CXCallingConv_X86Pascal;
alias CXCallingConv_AAPCS = CXCallingConv.CXCallingConv_AAPCS;
alias CXCallingConv_AAPCS_VFP = CXCallingConv.CXCallingConv_AAPCS_VFP;
alias CXCallingConv_IntelOclBicc = CXCallingConv.CXCallingConv_IntelOclBicc;
alias CXCallingConv_X86_64Win64 = CXCallingConv.CXCallingConv_X86_64Win64;
alias CXCallingConv_X86_64SysV = CXCallingConv.CXCallingConv_X86_64SysV;
alias CXCallingConv_X86VectorCall = CXCallingConv.CXCallingConv_X86VectorCall;
alias CXCallingConv_Invalid = CXCallingConv.CXCallingConv_Invalid;
alias CXCallingConv_Unexposed = CXCallingConv.CXCallingConv_Unexposed;

//CXTemplateArgumentKind
alias CXTemplateArgumentKind_Null = CXTemplateArgumentKind.CXTemplateArgumentKind_Null;
alias CXTemplateArgumentKind_Type = CXTemplateArgumentKind.CXTemplateArgumentKind_Type;
alias CXTemplateArgumentKind_Declaration = CXTemplateArgumentKind.CXTemplateArgumentKind_Declaration;
alias CXTemplateArgumentKind_NullPtr = CXTemplateArgumentKind.CXTemplateArgumentKind_NullPtr;
alias CXTemplateArgumentKind_Integral = CXTemplateArgumentKind.CXTemplateArgumentKind_Integral;
alias CXTemplateArgumentKind_Template = CXTemplateArgumentKind.CXTemplateArgumentKind_Template;
alias CXTemplateArgumentKind_TemplateExpansion = CXTemplateArgumentKind.CXTemplateArgumentKind_TemplateExpansion;
alias CXTemplateArgumentKind_Expression = CXTemplateArgumentKind.CXTemplateArgumentKind_Expression;
alias CXTemplateArgumentKind_Pack = CXTemplateArgumentKind.CXTemplateArgumentKind_Pack;
alias CXTemplateArgumentKind_Invalid = CXTemplateArgumentKind.CXTemplateArgumentKind_Invalid;

//CXTypeLayoutError
alias CXTypeLayoutError_Invalid = CXTypeLayoutError.CXTypeLayoutError_Invalid;
alias CXTypeLayoutError_Incomplete = CXTypeLayoutError.CXTypeLayoutError_Incomplete;
alias CXTypeLayoutError_Dependent = CXTypeLayoutError.CXTypeLayoutError_Dependent;
alias CXTypeLayoutError_NotConstantSize = CXTypeLayoutError.CXTypeLayoutError_NotConstantSize;
alias CXTypeLayoutError_InvalidFieldName = CXTypeLayoutError.CXTypeLayoutError_InvalidFieldName;

//CXRefQualifierKind
alias CXRefQualifier_None = CXRefQualifierKind.CXRefQualifier_None;
alias CXRefQualifier_LValue = CXRefQualifierKind.CXRefQualifier_LValue;
alias CXRefQualifier_RValue = CXRefQualifierKind.CXRefQualifier_RValue;

//CX_CXXAccessSpecifier
alias CX_CXXInvalidAccessSpecifier = CX_CXXAccessSpecifier.CX_CXXInvalidAccessSpecifier;
alias CX_CXXPublic = CX_CXXAccessSpecifier.CX_CXXPublic;
alias CX_CXXProtected = CX_CXXAccessSpecifier.CX_CXXProtected;
alias CX_CXXPrivate = CX_CXXAccessSpecifier.CX_CXXPrivate;

//CX_StorageClass
alias CX_SC_Invalid = CX_StorageClass.CX_SC_Invalid;
alias CX_SC_None = CX_StorageClass.CX_SC_None;
alias CX_SC_Extern = CX_StorageClass.CX_SC_Extern;
alias CX_SC_Static = CX_StorageClass.CX_SC_Static;
alias CX_SC_PrivateExtern = CX_StorageClass.CX_SC_PrivateExtern;
alias CX_SC_OpenCLWorkGroupLocal = CX_StorageClass.CX_SC_OpenCLWorkGroupLocal;
alias CX_SC_Auto = CX_StorageClass.CX_SC_Auto;
alias CX_SC_Register = CX_StorageClass.CX_SC_Register;

//CXChildVisitResult
alias CXChildVisit_Break = CXChildVisitResult.CXChildVisit_Break;
alias CXChildVisit_Continue = CXChildVisitResult.CXChildVisit_Continue;
alias CXChildVisit_Recurse = CXChildVisitResult.CXChildVisit_Recurse;

//CXObjCPropertyAttrKind
alias CXObjCPropertyAttr_noattr = CXObjCPropertyAttrKind.CXObjCPropertyAttr_noattr;
alias CXObjCPropertyAttr_readonly = CXObjCPropertyAttrKind.CXObjCPropertyAttr_readonly;
alias CXObjCPropertyAttr_getter = CXObjCPropertyAttrKind.CXObjCPropertyAttr_getter;
alias CXObjCPropertyAttr_assign = CXObjCPropertyAttrKind.CXObjCPropertyAttr_assign;
alias CXObjCPropertyAttr_readwrite = CXObjCPropertyAttrKind.CXObjCPropertyAttr_readwrite;
alias CXObjCPropertyAttr_retain = CXObjCPropertyAttrKind.CXObjCPropertyAttr_retain;
alias CXObjCPropertyAttr_copy = CXObjCPropertyAttrKind.CXObjCPropertyAttr_copy;
alias CXObjCPropertyAttr_nonatomic = CXObjCPropertyAttrKind.CXObjCPropertyAttr_nonatomic;
alias CXObjCPropertyAttr_setter = CXObjCPropertyAttrKind.CXObjCPropertyAttr_setter;
alias CXObjCPropertyAttr_atomic = CXObjCPropertyAttrKind.CXObjCPropertyAttr_atomic;
alias CXObjCPropertyAttr_weak = CXObjCPropertyAttrKind.CXObjCPropertyAttr_weak;
alias CXObjCPropertyAttr_strong = CXObjCPropertyAttrKind.CXObjCPropertyAttr_strong;
alias CXObjCPropertyAttr_unsafe_unretained = CXObjCPropertyAttrKind.CXObjCPropertyAttr_unsafe_unretained;

//CXObjCDeclQualifierKind
alias CXObjCDeclQualifier_None = CXObjCDeclQualifierKind.CXObjCDeclQualifier_None;
alias CXObjCDeclQualifier_In = CXObjCDeclQualifierKind.CXObjCDeclQualifier_In;
alias CXObjCDeclQualifier_Inout = CXObjCDeclQualifierKind.CXObjCDeclQualifier_Inout;
alias CXObjCDeclQualifier_Out = CXObjCDeclQualifierKind.CXObjCDeclQualifier_Out;
alias CXObjCDeclQualifier_Bycopy = CXObjCDeclQualifierKind.CXObjCDeclQualifier_Bycopy;
alias CXObjCDeclQualifier_Byref = CXObjCDeclQualifierKind.CXObjCDeclQualifier_Byref;
alias CXObjCDeclQualifier_Oneway = CXObjCDeclQualifierKind.CXObjCDeclQualifier_Oneway;

//CXNameRefFlags
alias CXNameRange_WantQualifier = CXNameRefFlags.CXNameRange_WantQualifier;
alias CXNameRange_WantTemplateArgs = CXNameRefFlags.CXNameRange_WantTemplateArgs;
alias CXNameRange_WantSinglePiece = CXNameRefFlags.CXNameRange_WantSinglePiece;

//CXTokenKind
alias CXToken_Punctuation = CXTokenKind.CXToken_Punctuation;
alias CXToken_Keyword = CXTokenKind.CXToken_Keyword;
alias CXToken_Identifier = CXTokenKind.CXToken_Identifier;
alias CXToken_Literal = CXTokenKind.CXToken_Literal;
alias CXToken_Comment = CXTokenKind.CXToken_Comment;

//CXCompletionChunkKind
alias CXCompletionChunk_Optional = CXCompletionChunkKind.CXCompletionChunk_Optional;
alias CXCompletionChunk_TypedText = CXCompletionChunkKind.CXCompletionChunk_TypedText;
alias CXCompletionChunk_Text = CXCompletionChunkKind.CXCompletionChunk_Text;
alias CXCompletionChunk_Placeholder = CXCompletionChunkKind.CXCompletionChunk_Placeholder;
alias CXCompletionChunk_Informative = CXCompletionChunkKind.CXCompletionChunk_Informative;
alias CXCompletionChunk_CurrentParameter = CXCompletionChunkKind.CXCompletionChunk_CurrentParameter;
alias CXCompletionChunk_LeftParen = CXCompletionChunkKind.CXCompletionChunk_LeftParen;
alias CXCompletionChunk_RightParen = CXCompletionChunkKind.CXCompletionChunk_RightParen;
alias CXCompletionChunk_LeftBracket = CXCompletionChunkKind.CXCompletionChunk_LeftBracket;
alias CXCompletionChunk_RightBracket = CXCompletionChunkKind.CXCompletionChunk_RightBracket;
alias CXCompletionChunk_LeftBrace = CXCompletionChunkKind.CXCompletionChunk_LeftBrace;
alias CXCompletionChunk_RightBrace = CXCompletionChunkKind.CXCompletionChunk_RightBrace;
alias CXCompletionChunk_LeftAngle = CXCompletionChunkKind.CXCompletionChunk_LeftAngle;
alias CXCompletionChunk_RightAngle = CXCompletionChunkKind.CXCompletionChunk_RightAngle;
alias CXCompletionChunk_Comma = CXCompletionChunkKind.CXCompletionChunk_Comma;
alias CXCompletionChunk_ResultType = CXCompletionChunkKind.CXCompletionChunk_ResultType;
alias CXCompletionChunk_Colon = CXCompletionChunkKind.CXCompletionChunk_Colon;
alias CXCompletionChunk_SemiColon = CXCompletionChunkKind.CXCompletionChunk_SemiColon;
alias CXCompletionChunk_Equal = CXCompletionChunkKind.CXCompletionChunk_Equal;
alias CXCompletionChunk_HorizontalSpace = CXCompletionChunkKind.CXCompletionChunk_HorizontalSpace;
alias CXCompletionChunk_VerticalSpace = CXCompletionChunkKind.CXCompletionChunk_VerticalSpace;

//CXCompletionContext
alias CXCompletionContext_Unexposed = CXCompletionContext.CXCompletionContext_Unexposed;
alias CXCompletionContext_AnyType = CXCompletionContext.CXCompletionContext_AnyType;
alias CXCompletionContext_AnyValue = CXCompletionContext.CXCompletionContext_AnyValue;
alias CXCompletionContext_ObjCObjectValue = CXCompletionContext.CXCompletionContext_ObjCObjectValue;
alias CXCompletionContext_ObjCSelectorValue = CXCompletionContext.CXCompletionContext_ObjCSelectorValue;
alias CXCompletionContext_CXXClassTypeValue = CXCompletionContext.CXCompletionContext_CXXClassTypeValue;
alias CXCompletionContext_DotMemberAccess = CXCompletionContext.CXCompletionContext_DotMemberAccess;
alias CXCompletionContext_ArrowMemberAccess = CXCompletionContext.CXCompletionContext_ArrowMemberAccess;
alias CXCompletionContext_ObjCPropertyAccess = CXCompletionContext.CXCompletionContext_ObjCPropertyAccess;
alias CXCompletionContext_EnumTag = CXCompletionContext.CXCompletionContext_EnumTag;
alias CXCompletionContext_UnionTag = CXCompletionContext.CXCompletionContext_UnionTag;
alias CXCompletionContext_StructTag = CXCompletionContext.CXCompletionContext_StructTag;
alias CXCompletionContext_ClassTag = CXCompletionContext.CXCompletionContext_ClassTag;
alias CXCompletionContext_Namespace = CXCompletionContext.CXCompletionContext_Namespace;
alias CXCompletionContext_NestedNameSpecifier = CXCompletionContext.CXCompletionContext_NestedNameSpecifier;
alias CXCompletionContext_ObjCInterface = CXCompletionContext.CXCompletionContext_ObjCInterface;
alias CXCompletionContext_ObjCProtocol = CXCompletionContext.CXCompletionContext_ObjCProtocol;
alias CXCompletionContext_ObjCCategory = CXCompletionContext.CXCompletionContext_ObjCCategory;
alias CXCompletionContext_ObjCInstanceMessage = CXCompletionContext.CXCompletionContext_ObjCInstanceMessage;
alias CXCompletionContext_ObjCClassMessage = CXCompletionContext.CXCompletionContext_ObjCClassMessage;
alias CXCompletionContext_ObjCSelectorName = CXCompletionContext.CXCompletionContext_ObjCSelectorName;
alias CXCompletionContext_MacroName = CXCompletionContext.CXCompletionContext_MacroName;
alias CXCompletionContext_NaturalLanguage = CXCompletionContext.CXCompletionContext_NaturalLanguage;
alias CXCompletionContext_Unknown = CXCompletionContext.CXCompletionContext_Unknown;

//CXVisitorResult
alias CXVisit_Break = CXVisitorResult.CXVisit_Break;
alias CXVisit_Continue = CXVisitorResult.CXVisit_Continue;

//CXResult
alias CXResult_Success = CXResult.CXResult_Success;
alias CXResult_Invalid = CXResult.CXResult_Invalid;
alias CXResult_VisitBreak = CXResult.CXResult_VisitBreak;

//CXIdxEntityKind
alias CXIdxEntity_Unexposed = CXIdxEntityKind.CXIdxEntity_Unexposed;
alias CXIdxEntity_Typedef = CXIdxEntityKind.CXIdxEntity_Typedef;
alias CXIdxEntity_Function = CXIdxEntityKind.CXIdxEntity_Function;
alias CXIdxEntity_Variable = CXIdxEntityKind.CXIdxEntity_Variable;
alias CXIdxEntity_Field = CXIdxEntityKind.CXIdxEntity_Field;
alias CXIdxEntity_EnumConstant = CXIdxEntityKind.CXIdxEntity_EnumConstant;
alias CXIdxEntity_ObjCClass = CXIdxEntityKind.CXIdxEntity_ObjCClass;
alias CXIdxEntity_ObjCProtocol = CXIdxEntityKind.CXIdxEntity_ObjCProtocol;
alias CXIdxEntity_ObjCCategory = CXIdxEntityKind.CXIdxEntity_ObjCCategory;
alias CXIdxEntity_ObjCInstanceMethod = CXIdxEntityKind.CXIdxEntity_ObjCInstanceMethod;
alias CXIdxEntity_ObjCClassMethod = CXIdxEntityKind.CXIdxEntity_ObjCClassMethod;
alias CXIdxEntity_ObjCProperty = CXIdxEntityKind.CXIdxEntity_ObjCProperty;
alias CXIdxEntity_ObjCIvar = CXIdxEntityKind.CXIdxEntity_ObjCIvar;
alias CXIdxEntity_Enum = CXIdxEntityKind.CXIdxEntity_Enum;
alias CXIdxEntity_Struct = CXIdxEntityKind.CXIdxEntity_Struct;
alias CXIdxEntity_Union = CXIdxEntityKind.CXIdxEntity_Union;
alias CXIdxEntity_CXXClass = CXIdxEntityKind.CXIdxEntity_CXXClass;
alias CXIdxEntity_CXXNamespace = CXIdxEntityKind.CXIdxEntity_CXXNamespace;
alias CXIdxEntity_CXXNamespaceAlias = CXIdxEntityKind.CXIdxEntity_CXXNamespaceAlias;
alias CXIdxEntity_CXXStaticVariable = CXIdxEntityKind.CXIdxEntity_CXXStaticVariable;
alias CXIdxEntity_CXXStaticMethod = CXIdxEntityKind.CXIdxEntity_CXXStaticMethod;
alias CXIdxEntity_CXXInstanceMethod = CXIdxEntityKind.CXIdxEntity_CXXInstanceMethod;
alias CXIdxEntity_CXXConstructor = CXIdxEntityKind.CXIdxEntity_CXXConstructor;
alias CXIdxEntity_CXXDestructor = CXIdxEntityKind.CXIdxEntity_CXXDestructor;
alias CXIdxEntity_CXXConversionFunction = CXIdxEntityKind.CXIdxEntity_CXXConversionFunction;
alias CXIdxEntity_CXXTypeAlias = CXIdxEntityKind.CXIdxEntity_CXXTypeAlias;
alias CXIdxEntity_CXXInterface = CXIdxEntityKind.CXIdxEntity_CXXInterface;

//CXIdxEntityLanguage
alias CXIdxEntityLang_None = CXIdxEntityLanguage.CXIdxEntityLang_None;
alias CXIdxEntityLang_C = CXIdxEntityLanguage.CXIdxEntityLang_C;
alias CXIdxEntityLang_ObjC = CXIdxEntityLanguage.CXIdxEntityLang_ObjC;
alias CXIdxEntityLang_CXX = CXIdxEntityLanguage.CXIdxEntityLang_CXX;

//CXIdxEntityCXXTemplateKind
alias CXIdxEntity_NonTemplate = CXIdxEntityCXXTemplateKind.CXIdxEntity_NonTemplate;
alias CXIdxEntity_Template = CXIdxEntityCXXTemplateKind.CXIdxEntity_Template;
alias CXIdxEntity_TemplatePartialSpecialization = CXIdxEntityCXXTemplateKind.CXIdxEntity_TemplatePartialSpecialization;
alias CXIdxEntity_TemplateSpecialization = CXIdxEntityCXXTemplateKind.CXIdxEntity_TemplateSpecialization;

//CXIdxAttrKind
alias CXIdxAttr_Unexposed = CXIdxAttrKind.CXIdxAttr_Unexposed;
alias CXIdxAttr_IBAction = CXIdxAttrKind.CXIdxAttr_IBAction;
alias CXIdxAttr_IBOutlet = CXIdxAttrKind.CXIdxAttr_IBOutlet;
alias CXIdxAttr_IBOutletCollection = CXIdxAttrKind.CXIdxAttr_IBOutletCollection;

//CXIdxObjCContainerKind
alias CXIdxObjCContainer_ForwardRef = CXIdxObjCContainerKind.CXIdxObjCContainer_ForwardRef;
alias CXIdxObjCContainer_Interface = CXIdxObjCContainerKind.CXIdxObjCContainer_Interface;
alias CXIdxObjCContainer_Implementation = CXIdxObjCContainerKind.CXIdxObjCContainer_Implementation;

//CXIdxEntityRefKind
alias CXIdxEntityRef_Direct = CXIdxEntityRefKind.CXIdxEntityRef_Direct;
alias CXIdxEntityRef_Implicit = CXIdxEntityRefKind.CXIdxEntityRef_Implicit;

//CXIndexOptFlags
alias CXIndexOpt_None = CXIndexOptFlags.CXIndexOpt_None;
alias CXIndexOpt_SuppressRedundantRefs = CXIndexOptFlags.CXIndexOpt_SuppressRedundantRefs;
alias CXIndexOpt_IndexFunctionLocalSymbols = CXIndexOptFlags.CXIndexOpt_IndexFunctionLocalSymbols;
alias CXIndexOpt_IndexImplicitTemplateInstantiations = CXIndexOptFlags.CXIndexOpt_IndexImplicitTemplateInstantiations;
alias CXIndexOpt_SuppressWarnings = CXIndexOptFlags.CXIndexOpt_SuppressWarnings;
alias CXIndexOpt_SkipParsedBodiesInSession = CXIndexOptFlags.CXIndexOpt_SkipParsedBodiesInSession;
