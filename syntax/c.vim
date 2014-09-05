syn match    cCustomParen    "?=(" contains=cParen,cCppParen
syn match    cCustomFunc     "\w\+\s*(\@=" contains=cCustomParen
syn match    cCustomScope    "::"
syn match    cCustomClass    "\w\+\s*::" contains=cCustomScope


hi def link cCustomFunc  Function
hi def link cCustomClass Function
"hi def link cCustomClass Class

syn keyword vsStatement vsDelete
hi def link vsStatement Statement
" vim: ts=8
