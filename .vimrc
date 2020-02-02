" enable plugins

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
" install via :PluginInstall
call vundle#begin()
" local wiki
Plugin 'vimwiki/vimwiki'
" markdown preview
" use via :InstantMarkdownPreview
Plugin 'suan/vim-instant-markdown'
" git
" use via :Git<Tab>
Plugin 'tpope/vim-fugitive'
" brackets
Plugin 'tpope/vim-unimpaired'
" undo tree
Plugin 'simnalamburt/vim-mundo'
"" golang
"Plugin 'fatih/vim-go'
"" plant uml
"Plugin 'aklt/plantuml-syntax'
"" plant uml previewer
"Plugin 'weirongxu/plantuml-previewer.vim'
"" AI-based autocompletion
"Plugin 'zxqfl/tabnine-vim'

"Plugin 'Shougo/neocomplete.vim'
"Plugin 'christianrondeau/vim-base64'
"Plugin 'junegunn/fzf'
"Plugin 'nathanaelkane/vim-indent-guides'
"Plugin 'open-browser.vim'
"Plugin 'prabirshrestha/async.vim'
"Plugin 'sheerun/vim-polyglot'
"Plugin 'tex/vimpreviewpandoc'
"Plugin 'vim-misc'
"Plugin 'xolox/vim-reload'
call vundle#end()
" �������� ��������������� ���� ����� (������, ������, vimrc, ...)
" �������� ������������
filetype plugin indent on

" �������� ��� vim
" https://habrahabr.ru/post/221267/

" - ��� �����������

" ������ ������ �� �������� ����� vim � ��� K ����� �������� �������
" � ������ ������ ������� ����������� �������� ������ �������� ���� (�������� 'nu' ������ 'number')

":set all - ������� ��� ������� ���������
":set verbose=<n> - �������� ���������� ����������

" ? � ����� set - ������� ������� �������� ������� ���������� (��-������ ����� ��� ?)
" no � ������ set - ��������� ������ ����������
" ! � ����� set - ����������� ������ ����������

" �� ������� ������������ �������� (�� ������) � ������ ������� (������) =)
" ^r-+ �������� �� ���������� ������ ������
" ^r-" �������� ��������� �������� � �������� (��. :registers)

" �� ������� ������������ ������������� ����������� ������ � ������ �������
" �������� ^ow == '������� �� ����� ����� � ������ �������'

" �������� ������������
":setlocal spell spelllang=ru,en
":setlocal spell spelllang=ru_yo,en_us

" delay on <Esc> in ms
set timeoutlen=500

" ��������� ������������� �������� � Vi, ��� ��� Vi ��� �� �����������
set nocompatible
" �������������� � ��������� ������
set wildmenu
" �������� ������� ������ ������, �� �� � ������
set wildmode=longest:list,full

" ��������� ������ ��� ������ �� ������� ������
set wrap
" ���������� ������ �� ������� �����, ����� ��������� �����. ����������� � list
set textwidth=0 nolist linebreak

" ��������� ��������� ������� � ������� � �����. ��� ? �������� ��������� �� ������� ��� �������� ����� ���� 'Error detected while processing BufWinEnter Auto commands for'
" ��������: ��������� ����� ~/.vim
set viewoptions=cursor,folds
"autocmd BufWinLeave ?* silent mkview
"autocmd BufWinEnter ?* silent loadview
au BufWinLeave ?* silent! mkview 1
au BufWinEnter ?* silent! loadview 1
" ��� ��������� ������� ���� ���� �������� ������� ���������� ����
au VimResized * :wincmd =

" ��������� ���������� � ���������� ����� �������, ������������� �������� � �.�.
set noerrorbells visualbell t_vb=

" ������������� ����� ������ ��������� � ���������
" ������� ��� ������ - shift + insert � ctrl + shift + v
" ������ ������ ������� ����� viminfo
set clipboard=autoselectplus

" �������� ��������� ����������
syntax on
" ���������� ������ �����
set number
" ��������� ������������� ���������
set nornu
" ���������� ��������� ������� � ������ ���������
set ruler
" ���������� �������� ��� ���������� ������������ ��������(������� ����� ��� ������ ���������), ����� ��������� �� ������
set confirm

" ������ ���������� ������ ���������
set laststatus=2
" ������� ������ ������ ������� � ���� ������
set cmdheight=1
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

" ���������������� � ������ ����� (?)
set cindent
" �������� �����������
set autoindent
" �������� "�����" �������, ��������, ���� ������ ����� `{`
set smartindent
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
" ������� ��������� ����� �� ���������� ������: "+p
set lazyredraw
" ���������� ��������� ���������� ������?
set ttyfast

" ���. ����. ������� � ���������� ����������
set magic
"enable gf on lines like that 'ENV=/path/to/file'
set isfname-==
" autosave on :make
set autowrite
"��������� ctags ��� ������� ������ ���� � ������ �� ����� ����, ������ �� /
set tags=./tags;

" Let's save undo info!
if has('persistent_undo')
if !isdirectory($HOME."/.vim")
    call mkdir($HOME."/.vim", "", 0770)
endif
if !isdirectory($HOME."/.vim/backups")
    call mkdir($HOME."/.vim/backups", "", 0700)
endif
set undodir=~/.vim/backups
set undofile
endif
nnoremap <F5> :MundoToggle<CR>

"""" RUSSIAN
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
" �� ��������� :(
if &term =~ "xterm"
    let &t_SI .= "\<Esc>]12;purple\x7"
    let &t_EI .= "\<Esc>]12;green\x7"
endif
" fix for tmux
if &term =~ "screen"
    let &t_SI .= "\<Esc>]12;purple\x7"
    let &t_EI .= "\<Esc>]12;green\x7"
endif


" ==================================== �������� ====================================

"show all bindings
"verbose map <leader>

" ������� - �����������
let mapleader = ","
let g:mapleader = ","

" ������������ ��������� (�� ��������� - ^6)
" ��� ������ � ���������� ������ �� ���������� (�������� ����� �������)
nnoremap <silent> <leader><leader> :call ChkIminsert()<CR>
inoremap <silent> <leader><leader> <C-\><C-o>:call ChkIminsert()<CR>

" <cr> - Enter (carriage return)

" ������������� ���� � ����������� ����
nnoremap <leader>v :e $MYVIMRC<CR>
" ��������� ���� � ����������� ����
nnoremap <leader>s :so $MYVIMRC<CR>

" ���-���� ��������� ����������
noremap <silent> <leader><space> :set hls!<cr>:call clearmatches()<cr>

" Copy via system buffer
vmap <leader>y :w! ~/.vbuf<CR>
nmap <leader>y :.w! ~/.vbuf<CR>
nmap <leader>p :r ~/.vbuf<CR>

"nnoremap <C-n> :cnext<CR>
"nnoremap <C-p> :cprevious<CR>
nnoremap <C-n> :cnext<cr>z.
nnoremap <C-p> :cprev<cr>z.
nnoremap <leader>c :cclose<CR>

" copy via system buffer
vmap <F2> "+y
nmap <F3> "+p

inoremap OO <C-O>
cmap w!! %!sudo tee > /dev/null %
"map <leader>su :w !sudo tee % <CR><CR>

"nnoremap <special> <leader>r :w<cr>:!./%<cr>
"nnoremap <F5> :wa\|!./%<CR>
"nnoremap <leader>r :w\|!./%<CR>


" �������� �� ����� ������(� ��� �� �����, ��� � �������)
nmap Y y$
" ����� � ����� mcview
nnoremap <F3> :q<cr>
nnoremap <F4> :q<CR>

" Esc to Tab ??
nnoremap <Tab> <Esc>
vnoremap <Tab> <Esc>gV
onoremap <Tab> <Esc>
inoremap <Tab> <Esc>`^
inoremap <Leader><Tab> <Tab>
nnoremap <Tab> <Esc>
" Esc to Tab

" =========================== � ����������� �� ���� ����� =================================
" �� K ���������� � ������� ���� � ������������ �����
autocmd FileType vim  setlocal keywordprg=:help
autocmd FileType help setlocal keywordprg=:help

autocmd FileType make setlocal noexpandtab
autocmd FileType tex setlocal noexpandtab
autocmd FileType go setlocal noexpandtab

" python
let python_highlight_all = 1
" ������ ��������� � �������������� �������� ����� ������, �� ��� :(
autocmd FileType python setlocal ts=4 sts=4 sw=4 et
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType python setlocal mp=python3

autocmd FileType haskell setlocal expandtab ts=2 sts=2 sw=2 et
au! BufNewFile,BufReadPost *.{yaml,yml} set filetype=yaml foldmethod=indent
autocmd FileType yaml setlocal expandtab ts=2 sts=2 sw=2

" ============================================ ������ ����� ===============================

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

endif

command! OpenInVSCode exe "silent !code --goto '" . expand("%") . ":" . line(".") . ":" . col(".") . "'" | redraw!

autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=black
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=darkgrey
":highlight ExtraWhitespace ctermbg=red guibg=red
" The following alternative may be less obtrusive.
highlight ExtraWhitespace ctermbg=darkgreen guibg=lightgreen
" Try the following if your GUI uses a dark background.
"highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

" ================================ ��������� =================================
" ����� �� ��������� ����� � ���������������� �������, �� �� ��������
" ���� ����� ������� ���� � ��������� ���������, �� ������� �������
" :e ++enc=cp866
set fileencodings=utf-8,cp1251,koi8-r,cp866
set fileformats=unix,dos
" ��������� ������ �� ��������� utf8
"set termencoding=utf8

" ================================ diff
if &diff
    " https://stackoverflow.com/questions/2019281/load-different-colorscheme-when-using-vimdiff

    " highlight DiffAdd    cterm=bold ctermfg=10 ctermbg=17
    " highlight DiffDelete cterm=bold ctermfg=10 ctermbg=17
    " highlight DiffChange cterm=bold ctermfg=10 ctermbg=17
    " highlight DiffText   cterm=bold ctermfg=10 ctermbg=88
    syntax off
endif

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
" ��� ���������� ����� ������� ������� � ����� ������ �������
" ��� ������ � ����� ����� ������ git diff
"autocmd BufWritePre * :%s/\s\+$//e
"" ��������� ��� ������, ��������� ������� ���� (������� ��� ������� ��������)
"nnoremap <leader>s :wa\| !./% <cr>
""������� ����� ����� ��� ����������
"inoremap <F2> <C-R>='FN;'.expand('%:t:r')<CR>

"" ������ ����������� ��������, 
"" ����������� ��������� ����� (����� �������� � ���������� ������)
"nnoremap gJ :set operatorfunc=GJoinoperator<CR>g@
"func! GJoinoperator(submode)
"    echo "a"
"    '[,']join!
"endfunc

"" ����������� ������� ���� � ����, ������������ ��� ��, ��� ������������ �����
":execute "!cp -f % <cWORD>" | e <cWORD>

"" ���������� ���������� (��� Windows) START
"function! Translate(word)
"    let word = system('"D:\sdcv\sdcv.exe" --data-dir "D:\sdcv\dict\mueller" -n  ' . a:word)
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

"=================================== plugins ===============================

"===================================  fugitive
set statusline=%<%f\ %h%m%r\ %{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P

"==================================== instant markdown previev
"set runtimepath^=/usr/share/vim/vimfiles/after/ftplugin/markdown/
"set runtimepath^=/usr/share/vim/vimfiles/after/ftplugin/markdown/instant-markdown.vim
let g:instant_markdown_allow_unsafe_content = 1
let g:instant_markdown_autostart = 0
nnoremap <leader>m :InstantMarkdownPreview<CR>

"==================================== vimwiki
let g:vimwiki_list = [{'path': '~/wiki/', 'index': 'Index',
                      \ 'syntax': 'markdown', 'ext': '.md'}]
autocmd FileType vimwiki setlocal expandtab ts=2 sts=2 sw=2 et
" 'vimwiki' settings
let g:vimwiki_global_ext = 0
" different header colors
let g:vimwiki_hl_headers=1
" different color for checked points
let g:vimwiki_hl_cb_checked=1
command! -nargs=1 Ngrep vimgrep "<args>" ~/wiki/**/*.md
nnoremap <leader>[ :Ngrep 
" vimwiki add todo-checkbox
nmap <Space> <C-Space>

"==================================== golang
autocmd FileType go nmap <leader>r  <Plug>(go-run)
autocmd FileType go nmap <leader>b  <Plug>(go-build)
autocmd FileType go nmap <leader>t  <Plug>(go-test)
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_build_constraints = 1

if exists('g:loaded_polyglot')
    " broken: https://github.com/fatih/vim-go/issues/2046#issuecomment-436462608
    let g:polyglot_disabled = ['go']
endif
let g:go_fmt_command = "goimports"
let g:go_list_type = "quickfix"

let g:go_metalinter_autosave_enabled = ['test', 'vet', 'golint']
" Build/Test on save.
augroup auto_go
    "autocmd BufWritePost *.go :GoBuild
	autocmd BufWritePost *_test.go :GoTest
augroup end

""=================================== slime - vim repl
"let g:slime_target = "tmux"
"let g:slime_dont_ask_default = 1
"let g:slime_default_config = {"socket_name": "default", "target_pane": ":.1"}
"
"xmap <leader>l <Plug>SlimeRegionSend
"nmap <leader>l <Plug>SlimeMotionSend
"nmap <leader>ll <Plug>SlimeLineSend
"
"" send in paragraph. same as ^C^C
"nmap <leader>k <Plug>SlimeParagraphSend

""==================================== pymode
"function! Pymode(arg)
"    if a:arg == 0
"        " turn off pymode
"        let g:pymode = 0
"        let g:pymode_python = 'disable'
"    else
"        let g:pymode_options_colorcolumn = 0
"
"        set completeopt=menu
"        let g:pymode_warning = 'off'
"        "rope slowdown on save!
"        let g:pymode_rope_autoimport = 0
"        let g:pymode_rope = 0
"        let g:tagbar_autofocus = 1
"        let g:tagbar_sort = 0 "tagbar shows tags in order of they created in file
"        "let g:tagbar_foldlevel = 0 "close tagbar folds by default
"        "let g:pymode_lint_ignore = "E265,E302,E303,E114,E501,E111"
"    endif
"endfun
"
"call Pymode(0)
"
""map <leader>p :call Pymode(1)<CR>
""map <leader>o :call Pymode(0)<CR>

""==================================== you complete me
"let g:ycm_path_to_python_interpreter="/usr/bin/python2"
"let g:ycm_server_log_level = 'debug'
"let g:ycm_server_keep_logfiles = 1
"let g:ycm_server_use_vim_stdout = 1
"let b:ycm_largefile=1

""==================================== markdown previev
"let vim_markdown_preview_browser='Firefox'
"let vim_markdown_preview_hotkey='<C-m>'
"let vim_markdown_preview_toggle=0

""==================================== neocomplete
"let g:neocomplete#enable_at_startup = 1
"let g:neocomplete#force_overwrite_completefunc      = 1
"let g:neocomplete#enable_smart_case                 = 1
"let g:neocomplete#auto_completion_start_length      = 3
"let g:neocomplete#sources#syntax#min_keyword_length = 3
