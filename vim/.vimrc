set encoding=gb2312
syn on                  " 打开语法高亮
"set guifont=Luxi/ Mono/ 9 " 设置字体，字体名称和字号
set tabstop=4             " 设置tab键的宽度
set shiftwidth=4           " 换行时行间交错使用4个空格
set autoindent             " 自动对齐
set backspace=2           " 设置退格键可用
set smartindent            " 智能对齐方式
set ai!                   " 设置自动缩进
set nu!                   " 显示行号
set showmatch            " 设置匹配模式，类似当输入一个左括号时会匹配相应的那个右括号
set ruler                 " 在编辑过程中，在右下角显示光标位置的状态行
set incsearch              " 查询时非常方便，如要查找book单词，当输入到/b时，会自动找到
                        " 第一个b开头的单词，当输入到/bo时，会自动找到第一个bo开头的
                        " 单词，依次类推，进行查找时，使用此设置会快速找到答案，当你
                        " 找要匹配的单词时，别忘记回车
set vb t_vb=             " vim进行编辑时，如果命令错误，会发出一个响声，该设置去掉响声
syntax enable
syntax on
colorscheme desert		" background color change
set helplang=cn			" help document language to CHINA
set encoding=utf-8
set ic					" (ignorecase 的缩写) 忽略大小写

hi Constant gui=NONE guifg=DarkYellow
"hi String gui=NONE guifg=DarkRed
"hi Normal gui=NONE guifg=darkgreen

" Map
map <silent> <C-s> :w<cr>
map <silent> <SPACE> <S-#>
map <silent> <A-c> :q<cr>
" -----------------------------
" taglist setting
" -----------------------------
let Tlist_File_Fold_Auto_Close=0 "让当前不被编辑的文件的方法列表自动折叠起来 
let Tlist_Show_One_File=1 	" 不同时显示多个文件的 tag ，只显示当前文件的
let Tlist_Exit_OnlyWindow=1	" 如果 taglist 窗口是最后一个窗口，则退出 vim
let Tlist_Auto_Open=1		" auto opern when vim start
let Tlist_Use_Right_Window=0 " put the taglist window on right
let Tlist_GainFocus_On_ToggleOpen=0
let Tlist_WinWidth=30
nmap <silent> <F9> :TlistToggle<cr>
" -----------------------------
" winManage setting
" -----------------------------
" let g:winManagerWindowLayout="FileExplorer|TagList"
let g:winManagerWindowLayout="FileExplorer"
let g:winManagerWidth=30
let g:AutoOpenWinManager=0	" 1: means auto satart WinManager when start vim
nmap <silent> <F8> :WMToggle<cr>

"-----------------------------
" cscope
" ----------------------------
set cscopequickfix=s-,c-,d-,i-,t-,e-

" miniBuffer
let g:miniBufExplMapWindowNavArrows=1 
let g:miniBufExplMapCTabSwitchBufs=1
"-----------------------------
" Grep 
" ----------------------------
nnoremap <silent> <F1> :Grep<CR>
"-----------------------------
" A.vim
" ----------------------------
nnoremap <silent> <F12> :A<CR>
"-----------------------------
" auto complete
" ----------------------------
filetype plugin indent on
set completeopt=longest,menu

"-----------------------------
" quick fix window
" ----------------------------
nmap <F2> :cw<cr>
nmap <F3> :cp<cr>
nmap <F4> :cn<cr>
"-----------------------------
" tags path
" ----------------------------
set tags=/home/key/work/totalconnect/tuxedo/tags	" set which tag you want to use
"set tags=/home/key/work/tuxedo-with-total-connect/Source\ Code/tuxedo/tags	" set which tag you want to use

"-----------------------------
" cscope setting
"-----------------------------
cs add /home/key/work/totalconnect/tuxedo/cscope.out /home/key/work/totalconnect/tuxedo
"cs add /home/key/work/tuxedo-with-total-connect/Source\ Code/tuxedo/cscope.out /home/key/work/tuxedo-with-total-connect/Source\ Code/tuxedo
"nmap <C-_>s :cs find s <C-R>=expand("<cword>")<CR><CR> " 查找本 C 符号(可以跳过注释)
"nmap <silent> <A-1> :cs find g <C-R>=expand("<cword>")<CR><CR> " 查找本定义
nmap <silent> <A-1> :cs find c <C-R>=expand("<cword>")<CR><CR> " 查找调用本函数的函数
nmap <silent> <A-2> :cs find t <C-R>=expand("<cword>")<CR><CR> " 查找本字符串
"nmap <C-_>e :cs find e <C-R>=expand("<cword>")<CR><CR> " 查找本 egrep 模式
"nmap <C-_>f :cs find f <C-R>=expand("<cfile>")<CR><CR> " 查找本文件
"nmap <C-_>i :cs find i <C-R>=expand("<cfile>")<CR><CR> " 查找包含本文件的文件
"nmap <C-_>d :cs find d <C-R>=expand("<cword>")<CR><CR> " 查找本函数调用的函数
