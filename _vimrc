if has('unix')
    set runtimepath+=$HOME/.vim/
endif

"must be called before filetype on
"设置bundle插件路径
"call pathogen#runtime_append_all_bundles()
call pathogen#infect() 

"按esc取消高亮显示
nnoremap <silent> <unique> <ESC> :nohls<CR><ESC>

" 设置当文件被改动时自动载入
set autoread
" quickfix模式
autocmd FileType c,cpp map <buffer> <leader><space> :w<cr>:make<cr>
"代码补全 
set completeopt=preview,menu 
"允许插件  
filetype plugin on
"共享剪贴板  
set clipboard+=unnamed 
"从不备份  
set nobackup
"make 运行
:set makeprg=g++\ -Wall\ \ %
"自动保存
set autowrite
set autowriteall
let autosave=5
set ruler                   " 打开状态栏标尺
"set cursorline              " 突出显示当前行
set magic                   " 设置魔术
set guioptions-=T           " 隐藏工具栏
set guioptions-=m           " 隐藏菜单栏

"去掉输入错误的提示声音
set noeb
"在处理未保存或只读文件的时候，弹出确认
set confirm
"自动缩进
set autoindent
set cindent
" Tab键的宽度
set tabstop=4
" 统一缩进为4
set softtabstop=4
set shiftwidth=4
" 不要用空格代替制表符
set noexpandtab
" 在行和段开始处使用制表符
set smarttab
" 显示行号
set number
" 历史记录数
set history=1000
"禁止生成临时文件
set nobackup
"set noswapfile
"搜索忽略大小写
set ignorecase
"搜索逐字符高亮
set hlsearch
set incsearch
"行内替换
set gdefault

" 侦测文件类型
filetype on
" 载入文件类型插件
filetype plugin on
" 为特定文件类型载入相关缩进文件
filetype indent on
" 保存全局变量
set viminfo+=!
" 带有如下符号的单词不要被换行分割
set iskeyword+=_,$,@,%,#,-
" 字符间插入的像素行数目
set linespace=0
" 增强模式中的命令行自动完成操作
set wildmenu
" 使回格键（backspace）正常处理indent, eol, start等
set backspace=2
" 允许backspace和光标键跨越行边界
set whichwrap+=<,>,h,l
" 可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位）
""set mouse=a
set selection=exclusive
""set selectmode=mouse,key
" 通过使用: commands命令，告诉我们文件的哪一行被改变过
set report=0
" 在被分割的窗口间显示空白，便于阅读
set fillchars=vert:\ ,stl:\ ,stlnc:\
" 高亮显示匹配的括号
set showmatch
" 匹配括号高亮的时间（单位是十分之一秒）
set matchtime=1
" 光标移动到buffer的顶部和底部时保持3行距离
set scrolloff=3
" 为C程序提供自动缩进
set smartindent
"打开文件类型检测, 加了这句才可以用智能补全
set completeopt=longest,menu

"编码&语言设置
set enc=utf-8
set langmenu=zh_CN.UTF-8
set helplang=cn
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936
set fileencoding=utf-8

"显示相关  
"set shortmess=atI   " 启动的时候不显示那个援助乌干达儿童的提示  
"winpos 5 5          " 设定窗口位置  
"set lines=40 columns=155    " 设定窗口大小   
set guifont=Courier_New:h10:cANSI   " 设置字体  
syntax on           " 语法高亮  
"autocmd InsertLeave * se nocul  " 用浅色高亮当前行  
"autocmd InsertEnter * se cul    " 用浅色高亮当前行  
set ruler           " 显示标尺  
set showcmd         " 输入的命令显示出来，看的清楚些  
set cmdheight=1     " 命令行（在状态行下）的高度，设置为1  
set whichwrap+=<,>,h,l   " 允许backspace和光标键跨越行边界(不建议)  
set scrolloff=3     " 光标移动到buffer的顶部和底部时保持3行距离  
set novisualbell    " 不要闪烁(不明白)

" 我的状态行显示的内容（包括文件类型和解码）
"set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}
set statusline=%F%m%r%h%w\ [%{(&fenc==\"\")?&enc:&fenc}%{(&bomb?\",BOM\":\"\")}]\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\-\%H:%M\")}
"set statusline=[%F]%y%r%m%*%=[Line:%l/%L,Column:%c][%p%%]
""set statusline=%<%f\ %h%m%r%=%k[%{(&fenc==\"\")?&enc:&fenc}%{(&bomb?\",BOM\":\"\")}]\ %-6.(%l,%c%V%)\ [%{&ff}]\ %y\ %P
let &statusline = substitute(&statusline,
                            \'%=',
                            \'%=%{winwidth(0)}x%{winheight(0)}   ',
                            \'')
set laststatus=2	"启动显示状态行(1),总是显示状态行(2)
set fileformats=unix,dos

" 命令行（在状态行下）的高度，默认为1，这里是2
set cmdheight=2

set foldmethod=indent
au BufWinLeave * silent mkview  " 保存文件的折叠状态
au BufRead * silent loadview    " 恢复文件的折叠状态
nnoremap <space> za             " 用空格来切换折叠状态

"set foldenable		"允许折叠  
"set foldmethod=manual   "手动折叠  
"set foldcolumn=0
"set foldmethod=indent 
"set foldlevel=3 
"set foldenable              " 开始折叠
"
set background=dark	"背景使用黑色 
set nocompatible  "去掉讨厌的有关vi一致性模式，避免以前版本的一些bug和局限

" 显示中文帮助
if version >= 603
	set helplang=cn
	set encoding=utf-8
endif

" 设置配色方案
" colo miracle
colorscheme molokai
highlight NonText guibg=#060606
highlight Folded  guibg=#0A0A0A guifg=#9090D0

if has('gui_running')
    if has('mac')
        set guifont=Monaco:h14
    elseif has('win32') || has('win64')
        set guifont=Consolas:h14:cANSI
        set guifontwide=YaHei\ Consolas\ Hybrid:h14
    else
        set guifont=Monospace:h14
	"set guifont=Bitstream\ Vera\ Sans\ Mono\ 10
    endif
endif
" Activate 256 colors independently of terminal, except Mac console mode
if !(has('mac') && !has('gui_running'))
    set t_Co=256
endif
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""新文件标题
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"新建.h,.cpp,.py,.sh文件，自动插入文件头 
autocmd BufNewFile *.h,*.cpp,*.hpp,*.c,*.py,*.sh exec ":call SetTitle()"
autocmd FileWritePre,BufWritePre *.h,*.py,*.sh ks|call UpdateModifyDatetime()|'s
"新建文件后，自动定位到文件末尾
autocmd BufNewFile * normal G
"定义函数SetTitle，自动插入文件头 
func SetTitle()
	"如果文件类型为.sh文件 
	if &filetype == 'sh' 
		call setline(1,"\#########################################################################") 
		call append(line("."), "\# File Name: ".expand("%"))
		call append(line(".")+1, "\# Author: billowqiu")
		call append(line(".")+2, "\# mail: billowqiu@163.com")
		call append(line(".")+3, "\# Created Time: ".strftime("%Y-%m-%d %H:%M:%S"))
		call append(line(".")+4, "\# Last Changed: ".strftime("%Y-%m-%d %H:%M:%S"))
		call append(line(".")+5, "\#########################################################################")
		call append(line(".")+6, "\#!/bin/bash")
		call append(line(".")+7, "")
	elseif &filetype == 'python'
		call setline(1, "\#!/bin/env python")
		call append(line("."), "\# -*- coding: utf-8 -*-")
		call append(line(".")+1,"\#########################################################################") 
		call append(line(".")+2, "\# File Name: ".expand("%")) 
		call append(line(".")+3, "\# Author: billowqiu") 
		call append(line(".")+4, "\# mail: billowqiu@163.com") 
		call append(line(".")+5, "\# Created Time: ".strftime("%Y-%m-%d %H:%M:%S")) 
		call append(line(".")+6, "\# Last Changed: ".strftime("%Y-%m-%d %H:%M:%S"))
		call append(line(".")+7, "\#########################################################################") 
		call append(line(".")+8, "")		
	elseif &filetype == 'cpp' || &filetype == 'c'
		call setline(1, "/*************************************************************************") 
		call append(line("."),   "	> File Name: ".expand("%")) 
		call append(line(".")+1, "	> Author: billowqiu") 
		call append(line(".")+2, "	> Mail: billowqiu@billowqiu.com ") 
		call append(line(".")+3, "	> Created Time: ".strftime("%Y-%m-%d %H:%M:%S")) 
		call append(line(".")+4, "	> Last Changed: ".strftime("%Y-%m-%d %H:%M:%S")) 
		call append(line(".")+5, "*************************************************************************/")
		if expand("%:e") == "h" || expand("%:e") == "hpp"
			call append(line(".")+6, "#ifndef _".toupper(expand("%:t:r"))."_H_") 
			call append(line(".")+7, "#define _".toupper(expand("%:t:r"))."_H_")
			call append(line(".")+8, "")
			call append(line(".")+9, "#endif //".toupper(expand("%:t:r"))."_H_")
			call append(line(".")+10, "")
		endif
	endif
endfunc

"更新修改时间
function UpdateModifyDatetime()
    if search("Last Changed") != 0
        let line = line(".")
        call setline(line,"\# Last Changed: ".strftime("%Y-%m-%d %H:%M:%S"))
    endif
endfunction

"自动补全
:inoremap ( ()<ESC>i
:inoremap ) <c-r>=ClosePair(')')<CR>
":inoremap { {<CR>}<ESC>O
":inoremap } <c-r>=ClosePair('}')<CR>
:inoremap [ []<ESC>i
:inoremap ] <c-r>=ClosePair(']')<CR>
:inoremap " ""<ESC>i
:inoremap ' ''<ESC>i
function! ClosePair(char)
	if getline('.')[col('.') - 1] == a:char
		return "\<Right>"
	else
		return a:char
	endif
endfunction

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Formats/Style {{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
set autoindent
set smartindent
set display=lastline
set clipboard=unnamed

if has('win32') || has('win64')
    set shellslash
endif

vmap <Tab> >gv
vmap <S-Tab> <gv

set scrolloff=7
if has('gui_running')
    set guioptions-=m
    set guioptions-=T
    set guioptions+=c
endif
set titlelen=0

" Make vim CJK-friendly
set formatoptions+=mM

" Show line number
set number

set cursorline


" Function to insert the current date
function s:InsertCurrentDate()
    let curr_date = strftime('%Y-%m-%d', localtime())
    silent! exec 'normal! gi' .  curr_date . "\<ESC>a"
endfunction

" Key mapping to insert the current date
imap <silent> <unique> <Leader><C-d> <C-o>:call <SID>InsertCurrentDate()<CR>

" Eliminate comment leader when joining comment lines
function s:JoinWithLeader(count, leaderText)
    let l:linecount = a:count
    " default number of lines to join is 2
    if l:linecount < 2
        let l:linecount = 2
    endif
    echo l:linecount . " lines joined"
    " clear errmsg so we can determine if the search fails
    let v:errmsg = ''

    " save off the search register to restore it later because we will clobber
    " it with a substitute command
    let l:savsearch = @/

    while l:linecount > 1
        " do a J for each line (no mappings)
        normal! J
        " remove the comment leader from the current cursor position
        silent! execute 'substitute/\%#\s*\%('.a:leaderText.'\)\s*/ /'
        " check v:errmsg for status of the substitute command
        if v:errmsg=~'E486'
            " just means the line wasn't a comment - do nothing
        elseif v:errmsg!=''
            echo "Problem with leader pattern for s:JoinWithLeader()!"
        else
            " a successful substitute will move the cursor to line beginning,
            " so move it back
            normal! ``
        endif
        let l:linecount = l:linecount - 1
    endwhile
    " restore the @/ register
    let @/ = l:savsearch
endfunction

function s:MapJoinWithLeaders(leaderText)
    let l:leaderText = escape(a:leaderText, '/')
    " visual mode is easy - just remove comment leaders from beginning of lines
    " before using J normally
    exec "vnoremap <silent> <buffer> J :<C-u>let savsearch=@/<Bar>'<+1,'>".
                \'s/^\s*\%('.
                \l:leaderText.
                \'\)\s*/<Space>/e<Bar>'.
                \'let @/=savsearch<Bar>unlet savsearch<CR>'.
                \'gvJ'
    " normal mode is harder because of the optional count - must use a function
    exec "nnoremap <silent> <buffer> J :<C-u>call <SID>JoinWithLeader(v:count, '".l:leaderText."')<CR>"
endfunction

" End of Formats/Style }}}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Bash {{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" :help ft-bash-syntax
let g:is_bash = 1

" End of Bash }}}
"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" C/C++ {{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function s:GNUIndent()
    setlocal cinoptions=>4,n-2,{2,^-2,:2,=2,g0,h2,p5,t0,+2,(0,u0,w1,m1
    setlocal shiftwidth=2
    setlocal tabstop=8
endfunction

function s:SetSysTags()
    " include system tags, :help ft-c-omni
    if has('unix')
        set tags+=$HOME/.vim/systags
    elseif has('win32') || has('win64')
        set tags+=$VIM/vimfiles/systags
    endif
endfunction

function s:SetTags()
    set tags+=./tags
    set tags+=../tags
endfunction

function s:HighlightSpaceErrors()
    " Highlight space errors in C/C++ source files.
    " :help ft-c-syntax
    let g:c_space_errors = 1
endfunction

function s:TuneCHighlight()
    " Tune for C highlighting
    " :help ft-c-syntax
    let g:c_gnu = 1
    let g:c_no_curly_error = 1
endfunction

" Setup  my favorite C/C++ indent
function s:SetCPPIndent()
    setlocal cinoptions=(0,t0,w1 shiftwidth=4 tabstop=4
endfunction

" Setup basic C/C++ development envionment
function s:SetupCppEnv()
    " call s:SetSysTags()
    call s:SetTags()
    call s:HighlightSpaceErrors()
    call s:TuneCHighlight()
    call s:SetCPPIndent()
endfunction

" Setting for files following the GNU coding standard
if has('unix')
    au BufEnter /usr/include/* call s:GNUIndent()
endif

au FileType c,cpp setlocal commentstring=\ //%s
au FileType c,cpp call s:SetupCppEnv()
au FileType c,cpp call s:MapJoinWithLeaders('//\\|\\')

" End of C/C++ }}}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" thrift {{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
au BufRead,BufNewFile *.thrift set filetype=thrift
au! Syntax thrift source ~/.vim/syntax/thrift.vim

" End of thrift }}}
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" protobuf {{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
au BufRead,BufNewFile *.proto set filetype=proto
au! Syntax proto source ~/.vim/syntax/proto.vim

" End of protobuf }}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" nginx {{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
au BufRead,BufNewFile *.nginx set ft=nginx
au BufRead,BufNewFile */etc/nginx/* set ft=nginx
au BufRead,BufNewFile */usr/local/nginx/conf/* set ft=nginx
au BufRead,BufNewFile nginx.conf set ft=nginx
" End of nginx}}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" json {{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd BufNewFile,BufRead *.json setlocal filetype=json
autocmd BufNewFile,BufRead *.jsonp setlocal filetype=json
autocmd BufNewFile,BufRead *.geojson setlocal filetype=json
" End of json}}}
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" scons {{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
au BufNewFile,BufRead SCons* set filetype=scons
" End of scons}}}



"NERDtee设定
let NERDChristmasTree=1
let NERDTreeAutoCenter=1
let NERDTreeBookmarksFile=$VIM.'\Data\NerdBookmarks.txt'
let NERDTreeMouseMode=2
let NERDTreeShowBookmarks=1
let NERDTreeShowFiles=1
let NERDTreeShowHidden=1
let NERDTreeShowLineNumbers=1
let NERDTreeWinPos='left'
let NERDTreeWinSize=31
nnoremap f :NERDTreeToggle
map <F7> :NERDTree<CR>  

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin - DoxygenToolkit {{{
" http://www.vim.org/scripts/script.php?script_id=987
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Load doxygen syntax file for c/cpp/idl files
let g:load_doxygen_syntax = 1
let g:DoxygenToolkit_commentType = "C++"
let g:DoxygenToolkit_dateTag = ""
let g:DoxygenToolkit_authorName = "billowqiu"
let g:DoxygenToolkit_versionString = ""
let g:DoxygenToolkit_versionTag = ""
let g:DoxygenToolkit_briefTag_pre = "@brief:  "
let g:DoxygenToolkit_fileTag = "@file:   "
let g:DoxygenToolkit_authorTag = "@author: "
let g:DoxygenToolkit_blockTag = "@name: "
let g:DoxygenToolkit_paramTag_pre = "@param:  "
let g:DoxygenToolkit_returnTag = "@return:  "
let g:DoxygenToolkit_classTag = "@class: "

" End of DoxygenToolkit }}}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin - A {{{
" http://www.vim.org/scripts/script.php?script_id=31
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:alternateExtensions_h = "c,cpp,cc"
let g:alternateExtensions_H = "C,CPP,CC"
let g:alternateExtensions_cpp = "h,hpp"
let g:alternateExtensions_CPP = "H,HPP"
let g:alternateExtensions_c = "h"
let g:alternateExtensions_C = "H"
let g:alternateExtensions_cxx = "h"
let g:alternateSearchPath = 'sfr:.,sfr:../src,sfr:../include'

" End of A }}}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin - tagbar {{{
" http://github.com/majutsushi/tagbar
" http://www.vim.org/scripts/script.php?script_id=3465
" http://ctags.sourceforge.net/
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"nmap <silent> <unique> <Leader>t :TagbarToggle<CR>
nmap <F8> :TagbarToggle<CR>
let g:tagbar_left = 1
let g:tagbar_width = 30
let g:tagbar_compact = 1

" End of tagbar }}}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin - MRU {{{
" http://www.vim.org/scripts/script.php?script_id=521
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:MRU_Add_Menu = 0

" XXX: Change it. It's just for my environment.
" TODO: Should use $TMP as exclude pattern
if has('mac')
    let MRU_Exclude_Files = '^/private/var/folders/.*'
elseif has('win32') || has('win64')
    let MRU_Exclude_Files = '^\(h\|H\):\(/\|\\\)temp\(/\|\\\).*'
else
    let MRU_Exclude_Files = '^/tmp/.*\|^/var/tmp/.*'
endif

nnoremap <silent> <unique> <Leader>m :MRU<CR>

" End of MRU }}}


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin - neocomplcache {{{
" http://www.vim.org/scripts/script.php?script_id=2620
" http://github.com/Shougo/neocomplcache
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set showfulltag
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_ignore_case = 0
let g:neocomplcache_enable_underbar_completion = 1
let g:neocomplcache_auto_completion_start_length = 2
let g:neocomplcache_manual_completion_start_length = 2
let g:neocomplcache_plugin_disable = {'snippets_complete' : 1}
inoremap <expr> <CR> neocomplcache#smart_close_popup()."\<C-R>=delimitMate#ExpandReturn()\<CR>"
inoremap <expr> <C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr> <BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr> <C-y> neocomplcache#close_popup()
inoremap <expr> <C-e> neocomplcache#cancel_popup()

if !exists('g:neocomplcache_omni_patterns')
    let g:neocomplcache_omni_patterns = {}
endif
let g:neocomplcache_omni_patterns.c = '.*\.\|->'
let g:neocomplcache_omni_patterns.cpp = '.*\.\|->\|::'

" End of neocomplcache }}}
"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin - SuperTab {{{
" http://www.vim.org/scripts/script.php?script_id=1643
" http://github.com/ervandew/supertab
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Since use tags, disable included header files searching to improve
" performance.
set complete-=i
" Only scan current buffer
set complete=.

let g:SuperTabDefaultCompletionType = 'context'
let g:SuperTabCrMapping = 0
let g:SuperTabLeadingSpaceCompletion = 0

" End of SuperTab }}}

