
(Item
    (Doc)? @annotation
    (Expr
        (ExprFn
            ("private" @context)?
            "fn" @context
            fn_name: (FnDeclName) @name
            params: (ParamList) @context
            body: (ExprBlock)
            ) @item))

(Item
    (Doc)? @annotation
    (Expr
        (ExprDeclareVar
            ("export" @context)?
            ["let" "const"] @context
            name: (ident) @name
            value: (Expr)) @item
        ))
