

(str_template_expr ["${" "}"] @punctuation.bracket)
(SwitchArm (Expr) "=>" @punctuation.delimiter (Expr))

";" @punctuation
"," @punctuation.delimiter
[ "(" ")" "{" "}" "[" "]" "#{" ] @punctuation.bracket


[ "if" "else" "switch" ] @keyword.conditional
[ "do" "while" "loop" "until" "for" "in" "break" ] @keyword.repeat
[ "throw" "try" "catch"] @keyword.exception
[ "import" "export" "as" ] @keyword.import
["return"] @keyword.return
[ "fn" "private" "let" "const"] @keyword

[".." "..=" "||" "&&" "==" "!=" "<=" ">=" "<" ">" "+" "*" "**" "-" "/" "%" "<<" ">>" "^" "|" "&" "=" "+=" "/=" "*=" "**=" "%=" ">>=" "<<=" "-=" "|=" "&=" "^=" "??"] @operator

(lit_bool) @boolean
(lit_str) @string
(lit_int) @number
(lit_float) @number
[(comment_line_doc) (comment_block_doc)] @comment.doc

(binop) @operator

(ObjectField
  key: [(ident) (lit_str)] @property
  value: (Expr))


(ident) @variable

(ExprCall fn_name: (Expr) @function.name)
(ExprFn fn_name: (FnDeclName) @function)
