"let g:ycm_path_to_python_interpreter="/usr/bin/python2"
"let g:ycm_server_log_level = 'debug'
"let g:ycm_server_keep_logfiles = 1
"let g:ycm_server_use_vim_stdout = 1

":setlocal spell spelllang=ru,en
"
":MarkdownPreview

set timeoutlen=500

" ��������
" https://habrahabr.ru/post/221267/
" https://habrahabr.ru/post/221267/

" - ��� �����������

" ; � : �������� ������� ��� ��������, ���������� � Damian Conway

" ������ ������ �� �������� ����� ���� � ��� K ����� �������� �������
" � ������ ������ ������� ����������� �������� ������ �������� ���� (�������� 'nu' ������ 'number')

":set all - ������� ��� ������� ���������
":set verbose=<n> - �������� ���������� ����������

" ? � ����� set - ������� ������� �������� ������� ���������� (��-������ ����� ��� ?)
" no � ������ set - ��������� ������ ����������
" ! � ����� set - ����������� ������ ����������

" �� ������� ������������ �������� (�� ������) � ������ ������� (������) =)
" ^r-+ �������� �� ���������� ������ ������
" ^r-" �������� ��������� �������� � �������� (��. :registers)

" �� ������� ������������ ������������� ���������� ������ � ������ �������
" ^o-w � �.�.

" ��������� ������������� �������� � Vi, ��� ��� Vi ��� �� �����������
set nocompatible
" �������������� � ��������� ������
set wildmenu
" �������� ������� ������ ������, �� �� � ������
set wildmode=longest:list,full
" ???
set wildcharm=<C-z>

" ��������� ������ ��� ������ �� ������� ������
set wrap
" ���������� ������ �� ������� �����, ����� ��������� �����. ����������� � list
set textwidth=0 nolist linebreak

" ��������� ��������� ������� � ������� � �����. ��� ? �������� ��������� �� ������� ��� �������� ����� ���� 'Error detected while processing BufWinEnter Auto commands for'
" ��������: ��������� ����� ~/.vim !!!
set viewoptions=cursor,folds
autocmd BufWinLeave ?* silent mkview
autocmd BufWinEnter ?* silent loadview

" ��������� ���������� � ���������� ����� �������, ������������� �������� � �.�.
set noerrorbells visualbell t_vb=

" ������������� ����� ������ ��������� � ���������
" ������� ��� ������ - shift + insert � ctrl + shift + v
"set clipboard=unnamedplus
"set clipboard=unnamed
set clipboard=autoselectplus
" �� ������ ��� ����������� ��������� ������� ������� �� ���������


" �������� ��������������� ���� ����� (������, ������, vimrc, ...)
" �������� ������������
filetype indent on
" ���������������� � ������ ����� (?)
set cindent
" �������� �����������
set autoindent
" �������� "�����" �������, ��������, ���� ������ ����� `{`
set smartindent

" �������� ��������� ����������
syntax on
" ���������� ������ �����
set number
" ���������� ��������� ������� � ������ ���������
set ruler
" ���������� �������� ��� ���������� ������������ ��������(������� ����� ��� ������ ���������), ����� ��������� �� ������
set confirm
" ���������� ������������� ������� ������ ����� � ������ ��������� (����� � ��������� ������ �������� 1234)
set showcmd

" ������������ ����� � �������� ������
set incsearch
" ������������ ���������� ������
set hlsearch
" ������������ ������� ���� ��� ������, ...
set ignorecase
" ... ������ ���� ��������� ������ ���� ��� ��������
set smartcase

" �������������� ���� � �������
set expandtab
" ��������� �������� ���������� ������� ��� �������������� >> <<
set shiftround
" ???
set smarttab
" ������ ��������� �� ���������
set shiftwidth=4
set softtabstop=4
set tabstop=4

" ������ ���������� ������ ���������
set laststatus=2
" ������� ������ ������ ������� � ���� ������
set cmdheight=1

" �� ��������� ����, ����� ������������� �� ������
set hidden
" ������������ ������ ������� (��������� ������) ...
set showmatch
"... 3 �������?
set matchtime=3
" ��������� �������� - 2 ������ ������ � ����� ��� �������������� ������
set scrolloff=2
" ���������� ������� �������
set history=200

" � ������ ������� ������� ��������� ����������������, ����� �����, �������(?)
set backspace=indent,eol,start

" ����� �� ����� �������� ���� ����� ������
set splitbelow
set splitright

" �� �������������� ���� �� ����� ���������� ������� (������� ���������)
set lazyredraw
" ���������� ��������� ���������� ������?
set ttyfast

" ���. ����. ������� � ���������� ����������
set magic

" ��� ��������� ������� ���� ���� �������� ������� ���������� ����
au VimResized * :wincmd =

" ������ ���� - �������
set keymap=russian-jcukenwin
" ������ �� ��������� �� ���������
set iminsert=0
" ���� �� ��� �� �����, ��� � ������ � ������� ������
set imsearch=-1
" ��������� � ������ ������� ��������. ��� ����� ����������� �� �������� �����, ����������� �.
set iskeyword=@,48-57,_,192-255

" bracketed paste mode ============
" ���������� ������� �� ����. ������ � ������� shift-insert
" 1. ����. ����� � ������� ���������
" 2. �� ����� ������������ ��� ������� �������� ����� ������
let &t_SI .= "\<Esc>[?2004h"
let &t_EI .= "\<Esc>[?2004l"

function! XTermPasteBegin()
    set pastetoggle=<Esc>[201~
    set paste
    return ""
endfunction

inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()

" bracketed paste mode ============

" ������������ ����� � ��������� ������ � ����������� �� ���������
" ����� ������� ������ �� ����������
fun! KeymapHighlight()
    if &iminsert == 0
        highlight StatusLine ctermbg=blue
    else
        highlight StatusLine ctermbg=red
    endif
endfun

"������������ ��� ������ vim
call KeymapHighlight()
" ��� ��������� ��������� ���� ����� ����������� ���������� ��������� ������� ���������
au WinEnter * :call KeymapHighlight()

fun! ChkIminsert()
    let &iminsert = ! &iminsert
    call KeymapHighlight()
endfun

" ������ ���� ������� � ������ �������
if &term =~ "xterm"
    let &t_SI .= "\<Esc>]12;purple\x7"
    let &t_EI .= "\<Esc>]12;green\x7"
endif


" ==================================== �������� ====================================

" ������������ ��������� �� ����-��� (�� ��������� - ������-6)
" ��� ������ � ���������� ������ �������� ����� ������� �� ����������
"lnoremap <silent> <C-Space> <C-^>
"cnoremap <silent> <C-Space> <C-^>
nnoremap <silent> <C-^> :call ChkIminsert()<CR>
inoremap <silent> <C-^> <C-\><C-o>:call ChkIminsert()<CR>

"" Inpired by Damian Conway START
"" �������������� �� ��� � ������ �������.
"function! SuperCleverTab()
"    if strpart( getline('.'), 0, col('.')-1 ) =~ '^\s*$'
"        return "\<Tab>"
"    else
"        return "\<C-p>"
"    endif
"endfunction
"inoremap <Tab> <C-R>=SuperCleverTab()<cr>

"������ ������� : � ;
nnoremap ; :
nnoremap : ;
vnoremap ; :
vnoremap : ;
cnoremap ; :
cnoremap : ;

" ������ ������� ������ �������� � ��������� ��������� (������ ������ �� �����)
nnoremap v <C-V>
nnoremap <C-V> v
vnoremap v <C-V>
vnoremap <C-V> v
" Inpired by Damian Conway END

" �������� �� ����� ������ � ��� �� �����, ��� � �������
nmap Y y$

" ������� - �����������
let mapleader = ","
let g:mapleader = ","

" <cr> - Enter (carriage return)
" % - ��� �������� �����

" ������������� ���� � ����������� ����
nnoremap <leader>v :e $MYVIMRC<CR>
" ��������� ���� � ����������� ����
nnoremap <leader>s :so $MYVIMRC<CR>

"working autoload!
augroup myvimrc
    au!
    au BufWritePost .vimrc so $MYVIMRC
    "au BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc so $MYVIMRC | if has('gui_running') | so $MYGVIMRC | endif
augroup END

" ���-���� ��������� ����������
"nnoremap <silent> <leader><Space> :set hlsearch!<cr>
noremap <silent> <leader><space> :noh<cr>:call clearmatches()<cr>

" ������������� ����� ����� ��������� ���� ��� ������ �������
nnoremap <leader><leader> <c-^>
" ����� � ����� mcview
nnoremap <F3> :q <cr>
nnoremap <F10> :q <cr>
"��������� ctags ��� ������� ������ ���� � ������ �� ����� ����, ������ �� /
set tags=./tags;

" =========================== � ����������� �� ���� ����� =================================
" �� K ���������� � ������� ���� � ������������ �����
autocmd FileType vim  setlocal keywordprg=:help
autocmd FileType help setlocal keywordprg=:help

autocmd FileType make setlocal noexpandtab

"autocmd FileType python setlocal ts=2 sts=2 sw=2 et "go to pep8
"autocmd FileType python setlocal mp=python3
let python_highlight_all = 1
" ������ ��������� � �������������� �������� ����� ������, �� ��� :(
autocmd FileType python set omnifunc=pythoncomplete#Complete

autocmd FileType haskell setlocal expandtab ts=2 sts=2 sw=2 et

" ============================================ ������ ����� ===============================

" ��� ���������� ����� ������� ������� � ����� ������ �������
" ��� ������ � ����� ����� ������ diff ���
"autocmd BufWritePre * :%s/\s\+$//e
"" ��������� ��� ������, ��������� ������� ���� (������� ��� ������� ��������)
"nnoremap <leader>s :wa\| !./% <cr>
""������� ����� ����� ��� ����������
"inoremap <F2> <C-R>='FN;'.expand('%:t:r')<CR>

if has ("gui_running")
    " ��������� ���������� � ���������� ����� �������, ������������� �������� � �.�.
    autocmd GUIEnter * set visualbell t_vb=

    "��������� ������ �������, ������ � �������� � ���
    let &guioptions = substitute(&guioptions, "t", "", "g")
    "����, ��� � ����������?
    set guioptions=g
    " ��������� ������� �������
    set guicursor=a:blinkon0


    " ��������� ����
    set mouse=a
    set mousemodel=popup

    " �������� �������� ���� ��������� �� ���������
    "set lines=50
    "set columns=140

    " ������ � �������� gvim (?)
    "set guifont=courier_new:h13:w8:cRUSSIAN
    "language ctype Russian_Russia.1251
    "language messages en

endif

" ================================ ��������� =================================
" ����� �� ��������� ����� � ���������������� �������, �� �� ��������
" ���� ����� ������� ���� � ��������� ���������, �� ������� �������
" :e ++enc=cp866
set fileencodings=utf-8,cp1251,koi8-r,cp866
set fileformats=unix,dos
" ��������� ������ �� ��������� utf8
"set termencoding=utf8


" ������ ����������� ���������, �� �� ��������
menu Encoding.koi8-r        :set encoding=koi8-r<CR>
menu Encoding.windows-1251  :set encoding=cp1251<CR>
menu Encoding.ibm-866       :set encoding=ibm866<CR>
menu Encoding.utf-8         :set encoding=utf8 <CR>
map <F8> :emenu Encoding.<TAB>
" ================================ ������ ===================================

" ����������� ����� � ����������� �� ������ ��������
"set foldenable
"set foldlevel=100
"set foldmethod=indent
" ������������ ������ ��� ������ � ���
"set foldopen=hor
" ������������?
"set foldclose=all
" �������� ���������-��������� �������
"nnoremap <Space> za


" ================================= �������������� �����������, ��������� ���� ���������� ============
"" ������ ����������� ��������, 
"" ����������� ��������� ����� (����� �������� � ���������� ������)
"nnoremap gJ :set operatorfunc=GJoinoperator<CR>g@
"func! GJoinoperator(submode)
"    echo "a"
"    '[,']join!
"endfunc

"" ����������� ������� ���� � ����, ������������ ��� ��, ��� ������������ �����
":execute "!cp -f % <cWORD>" | e <cWORD>

"" ���������� ���������� ��� Windows START
"function! Translate(word)
"    let word = system('"C:\Program files - portable\sdcv\sdcv.exe" --data-dir "C:\Program files - portable\sdcv\dict\mueller" -n  ' . a:word)
"    return word
"endfun
"
"function! WinTranslate(word)
"    let word = Translate(a:word)
"    if word == '' || word =~# 'Nothing simi'
"        return
"    endif
"
"    silent new
"    silent put =word
"    silent setl nomodified nomodifiable filetype=sdviv
"    silent setl nolist
"    silent 9 "������� �� �������
"endfun
"
"nnoremap <leader>t :call WinTranslate(expand('<cword>')) <CR>
"vnoremap <leader>t :call WinTranslate(expand('<cword>')) <CR>
"" ���������� ���������� END

" ��������� ������ ���������, ���� ���������� �������� �� ���������
"set statusline+=%b       "value of char
"set statusline=%t       "tail of the filename
"set statusline+=[%{strlen(&fenc)?&fenc:'none'}]
"set statusline+=%{&ff}] "file format
"set statusline+=%h      "help file flag
"set statusline+=%m      "modified flag
"set statusline+=%r      "read only flag
"set statusline+=%y      "filetype
"set statusline+=%=      "left/right separator
"set statusline+=%c,     "cursor column
"set statusline+=%l/%L   "cursor line/total lines
"set statusline+=\ %P    "percent through file

"=================================== plugins ===============================

"=================================== slime - vim repl ======================
let g:slime_target = "tmux"
let g:slime_dont_ask_default = 1
let g:slime_default_config = {"socket_name": "default", "target_pane": ":.1"}

xmap <leader>l <Plug>SlimeRegionSend
nmap <leader>l <Plug>SlimeMotionSend
nmap <leader>ll <Plug>SlimeLineSend

" send in paragraph. same as ^C^C
nmap <leader>k <Plug>SlimeParagraphSend


"==================================== pymode ================================
function! Pymode(arg)
    if a:arg == 0
        " turn off pymode
        let g:pymode = 0
        let g:pymode_python = 'disable'
    else
        let g:pymode_options_colorcolumn = 0

        set completeopt=menu
        let g:pymode_warning = 'off'
        "rope slowdown on save!
        let g:pymode_rope_autoimport = 0
        let g:pymode_rope = 0
        let g:tagbar_autofocus = 1
        let g:tagbar_sort = 0 "tagbar shows tags in order of they created in file
        "let g:tagbar_foldlevel = 0 "close tagbar folds by default
        "let g:pymode_lint_ignore = "E265,E302,E303,E114,E501,E111"
    endif
endfun

call Pymode(0)
"call Pymode(0)

"map <leader>p :call Pymode(1)<CR>
"map <leader>o :call Pymode(0)<CR>

let vim_markdown_preview_browser='Firefox'
let vim_markdown_preview_hotkey='<C-m>'
let vim_markdown_preview_toggle=1
"
map <leader>sudo :w !sudo tee % <CR><CR>

"nnoremap <special> <leader>r :w<cr>:!./%<cr>

nnoremap <F5> :wa\|!./%<CR>
nnoremap <leader>r :w\|!./%<CR>

"show all bindings
"verbose map <leader>

"silent! autocmd InsertEnter * :set nornu
"silent! autocmd InsertLeave * :set rnu

set nornu

"enable gf on lines like that 'ENV=/path/to/file'
set isfname-==

"let b:ycm_largefile=1

"set lazyredraw
