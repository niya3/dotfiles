"let g:ycm_path_to_python_interpreter="/usr/bin/python2"
"let g:ycm_server_log_level = 'debug'
"let g:ycm_server_keep_logfiles = 1
"let g:ycm_server_use_vim_stdout = 1

":setlocal spell spelllang=ru,en
"
":MarkdownPreview

set timeoutlen=500

" почитать
" https://habrahabr.ru/post/221267/
" https://habrahabr.ru/post/221267/

" - это комментарий

" ; и : обменяны местами для удобства, подсмотрел у Damian Conway

" наводи курсор на ключевое слово вима и жми K чтобы вызывать справку
" в первой строке справки перечислены короткие алиасы ключевых слов (например 'nu' вместо 'number')

":set all - вывести все текущие настройки
":set verbose=<n> - добавить отладочной информации

" ? в конце set - вывести текущее значение булевой переменной (не-булевы можно без ?)
" no в начале set - выключить бувеву переменную
" ! в конце set - переключить булеву переменную

" не забывай пользоваться вставкой (из буфера) в режиме вставки (текста) =)
" ^r-+ вставить из системного буфере обмена
" ^r-" вставить последнее попавшее в регистры (см. :registers)

" не забывай пользоваться возможностями командного режима в режиме вставки
" ^o-w и т.п.

" Выключаем совместимость настроек с Vi, так как Vi нам не понадобится
set nocompatible
" Автодополнение в командном режиме
set wildmenu
" выводить удобный полный список, на не в строку
set wildmode=longest:list,full
" ???
set wildcharm=<C-z>

" Разрывать строку при выходе за границы экрана
set wrap
" Переносить строку по границе слова, иначе разрывает слово. конфликтует с list
set textwidth=0 nolist linebreak

" Сохранять состояние курсора и вкладок в файле. Без ? вызывает сообщения об ошибках при открытии новых окон 'Error detected while processing BufWinEnter Auto commands for'
" ВНИМАНИЕ: требуется папка ~/.vim !!!
set viewoptions=cursor,folds
autocmd BufWinLeave ?* silent mkview
autocmd BufWinEnter ?* silent loadview

" Выключаем оповещение о достижении конца буффера, невозможности действия и т.д.
set noerrorbells visualbell t_vb=

" Неименованный буфер обмена совпадает с системным
" Проверь оба буфера - shift + insert и ctrl + shift + v
"set clipboard=unnamedplus
"set clipboard=unnamed
set clipboard=autoselectplus
" на работе ещё требовалось увеличить размеры буферов по умолчанию


" Включаем автоопределение типа файла (сишный, конфиг, vimrc, ...)
" Включаем выравнивание
filetype indent on
" Автовыравнивание в сишном стиле (?)
set cindent
" Включить автоотступы
set autoindent
" Включаем "умные" отступы, например, авто отступ после `{`
set smartindent

" Включить подсветку синтаксиса
syntax on
" Показывать номера строк
set number
" Показывать положение курсора в строке состояния
set ruler
" Предлагать варианты при выполнении запрещённого действия(попытка выйти без записи изменений), иначе сообщение об ошибке
set confirm
" Показывать незавершённые команды справа внизу в строке состояния (начни в командном режиме набирать 1234)
set showcmd

" Осуществлять поиск в процессе набора
set incsearch
" Подсвечивать результаты поиска
set hlsearch
" игнорировать регистр букв при поиске, ...
set ignorecase
" ... только если поисковая строка сама без регистра
set smartcase

" Преобразование таба в пробелы
set expandtab
" Дополнять неполные пробельные отступы при форматировании >> <<
set shiftround
" ???
set smarttab
" Размер табуляции по умолчанию
set shiftwidth=4
set softtabstop=4
set tabstop=4

" всегда показывать строку состояния
set laststatus=2
" Сделать строку команд высотой в одну строку
set cmdheight=1

" Не выгружать файл, когда переключаемся на другой
set hidden
" Подсвечивать парные символы (всяческие скобки) ...
set showmatch
"... 3 секунды?
set matchtime=3
" Сохраняем контекст - 2 строки сверху и снизу при перелистывании экрана
set scrolloff=2
" Увеличение размера истории
set history=200

" В режиме вставки удалять бэкспесом автовыравнивание, концы строк, вставки(?)
set backspace=indent,eol,start

" Фокус во вновь открытом окне после сплита
set splitbelow
set splitright

" Не перерисовывать окно во время применения макрсов (убирает зависания)
set lazyredraw
" Сглаженная отрисовка обновления экрана?
set ttyfast

" Вкл. спец. символы в регулярных выражениях
set magic

" При изменении размера окна вима поменять размеры разделённых окон
au VimResized * :wincmd =

" второй язык - русский
set keymap=russian-jcukenwin
" Вводим по умолчанию на ангийском
set iminsert=0
" Ищем на том же языке, что и вводим в текущий момент
set imsearch=-1
" Навигация с учетом русских символов. Без этого остановится на середине слова, содержащего ё.
set iskeyword=@,48-57,_,192-255

" bracketed paste mode ============
" корректная вставка из сист. буфера с помощью shift-insert
" 1. англ. текст в русской раскладке
" 2. не плывёт выравнивание при вставке большого куска текста
let &t_SI .= "\<Esc>[?2004h"
let &t_EI .= "\<Esc>[?2004l"

function! XTermPasteBegin()
    set pastetoggle=<Esc>[201~
    set paste
    return ""
endfunction

inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()

" bracketed paste mode ============

" раскрашиваем текст в командной строке в зависимости от раскладки
" цвета курсора задать не получилось
fun! KeymapHighlight()
    if &iminsert == 0
        highlight StatusLine ctermbg=blue
    else
        highlight StatusLine ctermbg=red
    endif
endfun

"раскрашиваем при старте vim
call KeymapHighlight()
" При изменении активного окна будет выполняться обновление индикации текущей раскладки
au WinEnter * :call KeymapHighlight()

fun! ChkIminsert()
    let &iminsert = ! &iminsert
    call KeymapHighlight()
endfun

" Разный цвет курсора в разных режимах
if &term =~ "xterm"
    let &t_SI .= "\<Esc>]12;purple\x7"
    let &t_EI .= "\<Esc>]12;green\x7"
endif


" ==================================== мэппинги ====================================

" Переключение раскладки на шифт-таб (по умолчанию - контрл-6)
" для поиска и командного режима вставить вызов функции не получилось
"lnoremap <silent> <C-Space> <C-^>
"cnoremap <silent> <C-Space> <C-^>
nnoremap <silent> <C-^> :call ChkIminsert()<CR>
inoremap <silent> <C-^> <C-\><C-o>:call ChkIminsert()<CR>

"" Inpired by Damian Conway START
"" Автодополнение на таб в режиме вставки.
"function! SuperCleverTab()
"    if strpart( getline('.'), 0, col('.')-1 ) =~ '^\s*$'
"        return "\<Tab>"
"    else
"        return "\<C-p>"
"    endif
"endfunction
"inoremap <Tab> <C-R>=SuperCleverTab()<cr>

"меняем местами : и ;
nnoremap ; :
nnoremap : ;
vnoremap ; :
vnoremap : ;
cnoremap ; :
cnoremap : ;

" меняем местами режимы блочного и строчного выделения (второй вообще не нужен)
nnoremap v <C-V>
nnoremap <C-V> v
vnoremap v <C-V>
vnoremap <C-V> v
" Inpired by Damian Conway END

" Копируем до конца строки в том же стиле, что и удаляем
nmap Y y$

" запятая - спецклавиша
let mapleader = ","
let g:mapleader = ","

" <cr> - Enter (carriage return)
" % - имя текущего файла

" Редактировать файл с настройками вима
nnoremap <leader>v :e $MYVIMRC<CR>
" Применить файл с настройками вима
nnoremap <leader>s :so $MYVIMRC<CR>

"working autoload!
augroup myvimrc
    au!
    au BufWritePost .vimrc so $MYVIMRC
    "au BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc so $MYVIMRC | if has('gui_running') | so $MYGVIMRC | endif
augroup END

" Вкл-выкл подсветку совпадений
"nnoremap <silent> <leader><Space> :set hlsearch!<cr>
noremap <silent> <leader><space> :noh<cr>:call clearmatches()<cr>

" Переключаться между двумя открытыми друг над другом файлами
nnoremap <leader><leader> <c-^>
" Выход в стиле mcview
nnoremap <F3> :q <cr>
nnoremap <F10> :q <cr>
"указвыаем ctags при неудачи искать файл с тэгами на папку выше, вплоть до /
set tags=./tags;

" =========================== в зависимости от типа файла =================================
" по K переходить в справку вима о подсвеченном слове
autocmd FileType vim  setlocal keywordprg=:help
autocmd FileType help setlocal keywordprg=:help

autocmd FileType make setlocal noexpandtab

"autocmd FileType python setlocal ts=2 sts=2 sw=2 et "go to pep8
"autocmd FileType python setlocal mp=python3
let python_highlight_all = 1
" должно вставлять в автодополнение ключевые слова питона, но нет :(
autocmd FileType python set omnifunc=pythoncomplete#Complete

autocmd FileType haskell setlocal expandtab ts=2 sts=2 sw=2 et

" ============================================ всякая хрень ===============================

" При сохранении файла удалять висящие в конце строки пробелы
" при работе с чужим кодом портит diff СКВ
"autocmd BufWritePre * :%s/\s\+$//e
"" Сохранить все буферы, выполнить текущий файл (полезно для отладки скриптов)
"nnoremap <leader>s :wa\| !./% <cr>
""вставка имени файла без расширения
"inoremap <F2> <C-R>='FN;'.expand('%:t:r')<CR>

if has ("gui_running")
    " Выключаем оповещение о достижении конца буффера, невозможности действия и т.д.
    autocmd GUIEnter * set visualbell t_vb=

    "отключаем лишние менюшки, кнопки и ползунки в гуи
    let &guioptions = substitute(&guioptions, "t", "", "g")
    "тоже, что и предыдущее?
    set guioptions=g
    " отключаем мигание курсора
    set guicursor=a:blinkon0


    " Поддержка мыши
    set mouse=a
    set mousemodel=popup

    " Указание размеров окна редактора по умолчанию
    "set lines=50
    "set columns=140

    " Борьба с виндовым gvim (?)
    "set guifont=courier_new:h13:w8:cRUSSIAN
    "language ctype Russian_Russia.1251
    "language messages en

endif

" ================================ кодировки =================================
" Вроде бы кодировки файла в предпочтительном порядке, но не работает
" если нужно открыть файл в известной кодировке, то выполни команду
" :e ++enc=cp866
set fileencodings=utf-8,cp1251,koi8-r,cp866
set fileformats=unix,dos
" Кодировка текста по умолчанию utf8
"set termencoding=utf8


" должно переключать кодировки, но не работает
menu Encoding.koi8-r        :set encoding=koi8-r<CR>
menu Encoding.windows-1251  :set encoding=cp1251<CR>
menu Encoding.ibm-866       :set encoding=ibm866<CR>
menu Encoding.utf-8         :set encoding=utf8 <CR>
map <F8> :emenu Encoding.<TAB>
" ================================ свёртки ===================================

" Сворачиваем текст в зависимости от уровня отступов
"set foldenable
"set foldlevel=100
"set foldmethod=indent
" автооткрытие свёрток при заходе в них
"set foldopen=hor
" автозакрытие?
"set foldclose=all
" пробелом открываем-закрываем вкладку
"nnoremap <Space> za


" ================================= неиспользуемые премудрости, сохранено ради синтаксиса ============
"" пример хитроумного мэппинга, 
"" Объединение диапазона строк (проще выделить в визуальном режиме)
"nnoremap gJ :set operatorfunc=GJoinoperator<CR>g@
"func! GJoinoperator(submode)
"    echo "a"
"    '[,']join!
"endfunc

"" Скопировать текущий файл в файл, называющийся так же, как подсвеченное слово
":execute "!cp -f % <cWORD>" | e <cWORD>

"" консольный переводчик для Windows START
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
"    silent 9 "перейти на строчку
"endfun
"
"nnoremap <leader>t :call WinTranslate(expand('<cword>')) <CR>
"vnoremap <leader>t :call WinTranslate(expand('<cword>')) <CR>
"" Консольный переводчик END

" Настройки строки состояния, меня устраивает значение по умолчанию
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
