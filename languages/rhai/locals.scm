[
    (ExprBlock)
] @local.scope

(ExprDeclareVar
    name: (_) @local.definition.var)

(ExprFn
    fn_name: (_) @local.definition.function)

(ParamList (Param (ident) @local.definition.parameter))

(ident) @local.references
