"========================================================
" Highlight All Function
"========================================================
syn match   cppFunction "/<[a-zA-Z_][a-zA-Z_0-9]*/>[^()]*)("me=e-2
syn match   cppFunction "/<[a-zA-Z_][a-zA-Z_0-9]*/>/s*("me=e-1
hi cppFunction        gui=NONE guifg=#B5A1FF

"========================================================
" Highlight All Math Operator
"========================================================
" C math operators
syn match       cppMathOperator     display "[-+/*/%=]"
" C pointer operators
syn match       cppPointerOperator  display "->/|/."
" C logical   operators - boolean results
syn match       cppLogicalOperator  display "[!<>]=/="
syn match       cppLogicalOperator  display "=="
" C bit operators
syn match       cppBinaryOperator   display "/(&/||/|/^/|<</|>>/)=/="
"syn match       cppBinaryOperator   display "/~"
"syn match       cppBinaryOperatorError display "/~="
" More C logical operators - highlight in preference to binary
syn match       cppLogicalOperator  display "&&/|||"
"syn match       cppLogicalOperatorError display "/(&&/|||/)="

" Math Operator
hi cppMathOperator            guifg=#3EFFE2
hi cppPointerOperator         guifg=#3EFFE2
hi cppLogicalOperator         guifg=#3EFFE2
hi cppBinaryOperator          guifg=#3EFFE2
"hi cppBinaryOperatorError     guifg=#3EFFE2
hi cppLogicalOperator         guifg=#3EFFE2
"hi cppLogicalOperatorError    guifg=#3EFFE2
