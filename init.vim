function! BuildComposer(info)
  if a:info.status != 'unchanged' || a:info.force
    if has('nvim')
      !cargo build --release
    else
      !cargo build --release --no-default-features --features json-rpc
    endif
  endif
endfunction



call plug#begin('~/.vim/plugged')


Plug 'adoy/vim-php-refactoring-toolbox'


Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

Plug 'NLKNguyen/papercolor-theme'

Plug 'luochen1990/rainbow'


Plug 'Shougo/vimproc.vim', {'do' : 'make'}  

Plug 'vim-scripts/dbext.vim'

Plug 'yuratomo/gmail.vim'

Plug 'christoomey/vim-conflicted'

"Plug 'lifepillar/vim-mucomplete'

Plug 'joonty/vdebug'

"Plug 'megaannum/forms'

"Plug 'megaannum/self'



"jdb java debug
"Plug 'Dica-Developer/vim-jdb'
Plug 'LeonelSoriano/vimHttppie'
Plug 'LeonelSoriano/vim-my-dbug'


Plug 'chrisbra/colorizer'

Plug 'schickling/vim-bufonly'

Plug 'idanarye/vim-vebugger'

"Plug 'vdesjardins/vim-langclient-java'

"Plug 'yuratomo/dbg.vim'

Plug 'kien/ctrlp.vim'

Plug 'SirVer/ultisnips'

Plug 'ap/vim-css-color'

Plug 'MattesGroeger/vim-bookmarks'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'altercation/vim-colors-solarized'
Plug 'ek9/vim-auto-solarize'


Plug 'gcmt/taboo.vim'


Plug 'mustache/vim-mustache-handlebars'

Plug 'itchyny/calendar.vim'

Plug 'mattn/emmet-vim'

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }


Plug 'tokorom/clang_complete'


Plug 'xolox/vim-session'



"Plug 'idanarye/vim-merginal'

"include c++ c objectivec
Plug 'xaizek/vim-inccomplete'



Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': './install.sh',
    \ }

Plug 'xolox/vim-misc'



Plug 'junegunn/fzf'

"Plug 'roxma/nvim-cm-php-language-server',  {'do': 'composer install && composer run-script parse-stubs'}

Plug 'roxma/LanguageServer-php-neovim',  {'do': 'composer install && composer run-script parse-stubs'}



"Plug 'starcraftman/vim-eclim'

Plug 'StanAngeloff/php.vim'




"moverse con scrool rapido y en smooth  C-f /C-u
Plug 'yuttie/comfortable-motion.vim'



Plug 'DougBeney/pickachu'

Plug 'majutsushi/tagbar'





Plug 'Valloric/MatchTagAlways'

Plug 'ryanoasis/vim-devicons'



"para rezise los split con control mas flecha
Plug 'talek/obvious-resize'




"desactiva funciones pesadas para archivos grandes
Plug 'vim-scripts/LargeFile'


Plug 'craigemery/vim-autotag'


"para mejor vista de tb
Plug 'fweep/vim-tabber'


Plug 'airblade/vim-gitgutter'

Plug 'sonph/onehalf', {'rtp': 'vim/'}

Plug 'powerline/powerline'

Plug 'eugen0329/vim-esearch'

Plug 'othree/html5.vim'

Plug 'elzr/vim-json'

Plug 'pangloss/vim-javascript'

Plug 'vim-scripts/grep.vim'

Plug 'Raimondi/delimitMate'

Plug 'ntpeters/vim-better-whitespace'


Plug 'artur-shaik/vim-javacomplete2'

Plug 'pseewald/vim-anyfold'

Plug 'mbbill/undotree'

Plug 'vim-scripts/TaskList.vim'
Plug 'gilsondev/searchtasks.vim'

Plug 'dracula/vim'

Plug 'Shougo/echodoc.vim'


Plug 'freitass/todo.txt-vim'

"buscar y reemplazar
Plug 'brooth/far.vim'

Plug 'thaerkh/vim-indentguides'

Plug 'jistr/vim-nerdtree-tabs'

Plug 'mikelue/vim-maven-plugin'


Plug 'scrooloose/nerdcommenter'

Plug 'tpope/vim-fugitive'

Plug 'thinca/vim-ref'


Plug 'joegesualdo/jsdoc.vim'

Plug 'euclio/vim-markdown-composer', { 'do': function('BuildComposer') }


Plug 'enricobacis/vim-airline-clock'

Plug 'farfanoide/inflector.vim'

Plug 'mikehaertl/pdv-standalone'

Plug 'ternjs/tern_for_vim', { 'for': ['javascript', 'javascript.jsx'] }
"Plug 'carlitux/deoplete-ternjs', { 'for': ['javascript', 'javascript.jsx'] }
"Plug 'othree/jspc.vim', { 'for': ['javascript', 'javascript.jsx'] }

Plug 'roxma/nvim-completion-manager'
Plug 'neomake/neomake'

" requires phpactor
Plug 'phpactor/phpactor' ,  {'do': 'composer install'}

Plug 'roxma/ncm-phpactor'


Plug 'roxma/nvim-cm-tern', {'do': 'npm install'} "


Plug 'honza/vim-snippets'

"abre archivos en la ultima posicion
Plug 'farmergreg/vim-lastplace'



Plug 'leafgarland/typescript-vim'
Plug 'Quramy/vim-js-pretty-template'


"theme
Plug 'rakr/vim-two-firewatch'
"theme
Plug 'mkarmona/materialbox'

"php composer
Plug 'noahfrederick/vim-composer'

"java refactory
Plug 'apalmer1377/factorus'




call plug#end()
set shell=bash\ -l


" for echodoc
set noshowmode


let g:autotagmaxTagsFileSize=1024
let g:autotagTagsFile=".tags"


set termguicolors
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

set spelllang=en_us,es_es

"nmap  :setlocal spell spelllang=es_es<cr>
"nmap  :setlocal spell spelllang=en_en<cr>

let g:dbext_default_profile_mySQLServer = 'type=MYSQL:user=root:passwd=123456:dbname=ritta_db'
let g:dbext_default_profile = 'mySQLServer'


"autocmd VimEnter * DBCompleteTables


set runtimepath+=~/.vim-plugins/LanguageClient-neovim

"autocmd FileType php LanguageClientStart

" Automatically start language servers.
"let g:LanguageClient_autoStart = 1


set hidden

let g:LanguageClient_serverCommands = {
    \ 'rust': ['rustup', 'run', 'nightly', 'rls'],
    \ 'javascript': ['javascript-typescript-stdio'],
    \ 'javascript.jsx': ['javascript-typescript-stdio'],
    \ 'java': ['java',
    \   '-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=1044',
    \   '-Declipse.application=org.eclipse.jdt.ls.core.id1',
    \   '-Dosgi.bundles.defaultStartLevel=4',
    \   '-Declipse.product=org.eclipse.jdt.ls.core.product',
    \   '-Dlog.protocol=true',
    \   '-Dlog.level=ALL',
    \   '-noverify',
    \   '-Xmx1G',
    \   '-jar', '/home/leonel/languajeserve/jdt-language-server-latest/plugins/org.eclipse.equinox.launcher_1.4.0.v20161219-1356.jar',
    \   '-configuration', '/home/leonel/languajeserve/jdt-language-server-latest/config_linux',
    \   '-data', '/home/leonel/dev/tuten/ejemplo'],
    \ }


let g:indentguides_spacechar = '┆'
let g:indentguides_tabchar = '.'


"nnoremap <unique> <Leader>rv :call PhpRenameLocalVariable()<CR>

"inoremap <C-Space> <esc>:call LanguageClientRestart()<CR>a
inoremap <C-@> :call LanguageClientRestart()<CR>

"nnoremap <silent> K :call LanguageClient_textDocument_hover()<CR>
"nnoremap <silent> gd :call Lan:qnition()<CR>
"nnoremap <silent> <F2> :call LanguageClient_textDocument_rename()<CR>


"let g:vimHttppieBrowser = 0


let g:auto_solarize_start_light = '0700'
let g:auto_solarize_start_dark = '1850'
let g:auto_solarize_togglebg_key = '<F7>'


highlight BookmarkSign ctermbg=NONE ctermfg=90
"highlight BookmarkLine ctermbg=194 ctermfg=NONE
let g:bookmark_sign = '☭'
let g:bookmark_highlight_lines = 0


let g:searchtasks_list=["TODO", "FIXME", "XXX", "LEONEL"]

"let g:deoplete#enable_at_startup = 1

"let g:deoplete#omni_patterns = {}
"let g:deoplete#omni_patterns.java = '[^. *\t]\.\w*'

"let g:deoplete#file#enable_buffer_path = 1
"let g:deoplete#omni#functions = {}
"let g:deoplete#omni#functions.javascript = [
"  \ 'tern#Complete',
"  \ 'jspc#omni'
"\]

"" Map leader to ,
let mapleader='\'

"let anyfold_activate=1
"let anyfold_fold_comments=1
"set foldlevel=3

"let g:deoplete#ignore_sources = get(g:, 'deoplete#ignore_sources', {})
"let g:deoplete#ignore_sources.php = ['omni']



let NERDTreeChDirMode=2
map <C-n> :NERDTreeToggle<CR>

function! NERDTreeToggleInCurDir()                                                                                                                                                             
·   " If NERDTree is open in the current buffer
·   if (exists("t:NERDTreeBufName") && bufwinnr(t:NERDTreeBufName) != -1)
·   ·   exe ":NERDTreeClose"
·   else
·   ·   if (expand("%:t") != '')
·   ·   ·   exe ":NERDTreeFind"
·   ·   else
·   ·   ·   exe ":NERDTreeToggle"
·   ·   endif
·   endif
endfunction


function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a',  'n')
endfunction
autocmd FileType php inoremap <Leader>u <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <Leader>u :call PhpInsertUse()<CR>



"let g:rainbow_active = 1

let g:rainbow_conf = {
\	'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
\	'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
\	'operators': '_,_',
\	'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
\	'separately': {
\		'*': {},
\		'lisp': {
\			'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
\		},
\		'tex': {
\			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
\		},
\		'vim': {
\			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
\		},
\		'xml': {
\			'parentheses': ['start=/\v\<\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'))?)*\>/ end=#</\z1># fold'],
\		},
\		'xhtml': {
\			'parentheses': ['start=/\v\<\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'))?)*\>/ end=#</\z1># fold'],
\		},
\		'html': {
\			'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
\		},
\		'php': {
\			'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold', 'start=/(/ end=/)/ containedin=@htmlPreproc contains=@phpClTop', 'start=/\[/ end=/\]/ containedin=@htmlPreproc contains=@phpClTop', 'start=/{/ end=/}/ containedin=@htmlPreproc contains=@phpClTop'],
\		},
\		'css': 0,
\		'sh': {
\			'parentheses': [['\(^\|\s\)\S*()\s*{\?\($\|\s\)','_^{_','}'], ['\(^\|\s\)if\($\|\s\)','_\(^\|\s\)\(then\|else\|elif\)\($\|\s\)_','\(^\|\s\)fi\($\|\s\)'], ['\(^\|\s\)for\($\|\s\)','_\(^\|\s\)\(do\|in\)\($\|\s\)_','\(^\|\s\)done\($\|\s\)'], ['\(^\|\s\)while\($\|\s\)','_\(^\|\s\)\(do\)\($\|\s\)_','\(^\|\s\)done\($\|\s\)'], ['\(^\|\s\)case\($\|\s\)','_\(^\|\s\)\(\S*)\|in\|;;\)\($\|\s\)_','\(^\|\s\)esac\($\|\s\)']],
\		},
\       
\	}
\}


"para resize de windows
noremap <silent> <C-Up> :<C-U>ObviousResizeUp<CR>
noremap <silent> <C-Down> :<C-U>ObviousResizeDown<CR>
noremap <silent> <C-Left> :<C-U>ObviousResizeLeft<CR>
noremap <silent> <C-Right> :<C-U>ObviousResizeRight<CR>





let g:gmail_imap = 'imap.gmail.com:993'

let g:gmail_smtp = 'smtp.gmail.com:465'

let g:gmail_user_name = 'xxx@gmail.com'

call gmail#imap#set_password('xxxxxx')


let g:vdebug_options = {}
let g:vdebug_options["port"] = 9000


" Set to auto read when a file is changed from the outside
"set autoread

" Sets how many lines of history VIM has to remember
set history=500


set nocompatible
" Enable filetype plugins
filetype plugin on
filetype indent on


nnoremap <C-K> :call PhpDocSingle()<CR>
vnoremap <C-K> :call PhpDocRange()<CR>



augroup lexical
  autocmd!
  autocmd FileType markdown,mkd call lexical#init()
  autocmd FileType textile call lexical#init()
  autocmd FileType text call lexical#init({ 'spell': 0 })
augroup END
let g:lexical#spell = 1 


" When writing a buffer.
call neomake#configure#automake('w')
" When writing a buffer, and on normal mode changes (after 750ms).
call neomake#configure#automake('nw', 750)
" When reading a buffer (after 1s), and when writing.
call neomake#configure#automake('rw', 1000)


set hlsearch
hi NeomakeErrorDefault  ctermbg=LightYellow

"hi NeomakeErrorDefault ctermfg=Red

let g:neomake_error_sign = { 'text': "x", 'texthl': 'NeomakeErrorDefault' }
let g:neomake_warning_sign = { 'text': "⚠", 'texthl': 'NeomakeWarningDefault' }
let g:neomake_informational_sign = { 'text': "\uF05A", 'texthl': 'NeomakeInformationDefault' }
let g:neomake_message_sign = { 'text': "\uF09A", 'texthl': 'NeomakeMessageDefault' }


let g:neomake_javascript_enabled_makers = ['eslint']

autocmd! BufWritePost,BufEnter * Neomake

if has("persistent_undo")
    set undodir=~/.undodir/
    set undofile
endif



let g:pdv_template_dir = $HOME ."/.vim/plugged/pdv/templates_snip"
nnoremap <buffer> <C-p> :call pdv#DocumentWithSnip()<CR>

autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete

"linea 80
if exists('+colorcolumn')
  set colorcolumn=120
else
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>120v.\+', -1)
endif
let g:UltiSnipsEditSplit="vertical"


let g:auto_solarize_check_on_save = 0



let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"


set nu



" mover hacia delante y hacia atras por tab
map <leader>cd :cd %:p:h<cr>:pwd<cr>
map <leader>cd :cd %:p:h<cr>:pwd<cr>


" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

" Turn on the WiLd menu
set wildmenu

" Ignore compiled files
set wildignore=*.o,*~,*.pyc

"Always show current position
set ruler

" Height of the command bar
set cmdheight=2

" A buffer becomes hidden when it is abandoned
set hid

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
syntax enable

"deser ocupero para el dia
"colorscheme desert
"set background=dark

"materialize claro para la noche
set t_Co=256   
set background=light
colorscheme PaperColor



" Set extra options when running in GUI mode
if has("gui_running")
    set guioptions-=T
    set guioptions+=e
    set t_Co=256
    set guitablabel=%M\ %t
endif

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines



""""""""""""""""""""""""""""""
" => Visual mode related
""""""""""""""""""""""""""""""
" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :call VisualSelection('f')<CR>
vnoremap <silent> # :call VisualSelection('b')<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk

" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
map <space> /
map <c-space> ?

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Close the current buffer
map <leader>bd :Bclose<cr>

" Close all the buffers
map <leader>ba :1,1000 bd!<cr>

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove

" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

" Switch CWD to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>

" Specify the behavior when switching between buffers 
try
  set switchbuf=useopen,usetab,newtab
  set stal=2
catch
endtry

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif
" Remember info about open buffers on close
set viminfo^=%


""""""""""""""""""""""""""""""
" => Status line
""""""""""""""""""""""""""""""
" Always show the status line
set laststatus=2

" Format the status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Editing mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remap VIM 0 to first non-blank character
map 0 ^

" Move a line of text using ALT+[jk] or Comamnd+[jk] on mac
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

if has("mac") || has("macunix")
  nmap <D-j> <M-j>
  nmap <D-k> <M-k>
  vmap <D-j> <M-j>
  vmap <D-k> <M-k>
endif

" Delete trailing white space on save, useful for Python and CoffeeScript ;)
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
autocmd BufWrite *.py :call DeleteTrailingWS()
autocmd BufWrite *.coffee :call DeleteTrailingWS()


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vimgrep searching and cope displaying
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" When you press gv you vimgrep after the selected text
vnoremap <silent> gv :call VisualSelection('gv')<CR>

" Open vimgrep and put the cursor in the right position
map <leader>g :vimgrep // **/*.<left><left><left><left><left><left><left>

" Vimgreps in the current file
map <leader><space> :vimgrep // <C-R>%<C-A><right><right><right><right><right><right><right><right><right>

" When you press <leader>r you can search and replace the selected text
vnoremap <silent> <leader>r :call VisualSelection('replace')<CR>

" Do :help cope if you are unsure what cope is. It's super useful!
"
" When you search with vimgrep, display your results in cope by doing:
"   <leader>cc
"
" To go to the next search result do:
"   <leader>n
"
" To go to the previous search results do:
"   <leader>p
"
map <leader>cc :botright cope<cr>
map <leader>co ggVGy:tabnew<cr>:set syntax=qf<cr>pgg
map <leader>n :cn<cr>
map <leader>p :cp<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Spell checking
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Pressing ,ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>

" Shortcuts using <leader>
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Misc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remove the Windows ^M - when the encodings gets messed up
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

" Quickly open a buffer for scripbble
map <leader>q :e ~/buffer<cr>

" Toggle paste mode on and off
map <leader>pp :setlocal paste!<cr>



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Helper functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! CmdLine(str)
    exe "menu Foo.Bar :" . a:str
    emenu Foo.Bar
    unmenu Foo
endfunction

function! VisualSelection(direction) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", '\\/.*$^~[]')
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'b'
        execute "normal ?" . l:pattern . "^M"
    elseif a:direction == 'gv'
        call CmdLine("vimgrep " . '/'. l:pattern . '/' . ' **/*.')
    elseif a:direction == 'replace'
        call CmdLine("%s" . '/'. l:pattern . '/')
    elseif a:direction == 'f'
        execute "normal /" . l:pattern . "^M"
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction


" Returns true if paste mode is enabled
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    en
    return ''
endfunction
    
" Don't close window, when deleting a buffer
command! Bclose call <SID>BufcloseCloseIt()
function! <SID>BufcloseCloseIt()
   let l:currentBufNum = bufnr("%")
   let l:alternateBufNum = bufnr("#")

   if buflisted(l:alternateBufNum)
     buffer #
   else
     bnext
   endif

   if bufnr("%") == l:currentBufNum
     new
   endif

   if buflisted(l:currentBufNum)
     execute("bdelete! ".l:currentBufNum)
   endif
endfunction


"esto es para el plogin de tagbar
nmap <F8> :TagbarToggle<CR>


"este es para lo busqueda en archivos
set runtimepath^=~/.vim/bundle/ctrlp.vim


"esto es para los comentarios
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
"final delos comentarios


 if has('mouse')
   set mouse=a
 endif

set guioptions-=e


set sessionoptions+=tabpages,globals


noremap <silent> <C-S>          :wa<CR>
vnoremap <silent> <C-S>         <C-C>:wa<CR>
inoremap <silent> <C-S>         <C-O>:wa<CR>

noremap <silent> <A-t>          :tabnew<CR>
vnoremap <silent> <A-t>         <C-C>:tabnew<CR>
inoremap <silent> <A-t>        <C-O>:tabnew<CR>



noremap <A-k> :wincmd k<cr>
noremap <A-j> :wincmd j<cr>
noremap <A-h> :wincmd h<cr>
noremap <A-l> :wincmd l<cr>





let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts=1
if !exists('g:airline_powerline_fonts')
  let g:airline#extensions#tabline#left_sep = ' '
  let g:airline#extensions#tabline#left_alt_sep = '|'
  let g:airline_left_sep          = '▶'
  let g:airline_left_alt_sep      = '»'
  let g:airline_right_sep         = '◀'
  let g:airline_right_alt_sep     = '«'
  let g:airline#extensions#branch#prefix     = '⤴' "➔, ➥, ⎇
  let g:airline#extensions#readonly#symbol   = '⊘'
  let g:airline#extensions#linecolumn#prefix = '¶'
  let g:airline#extensions#paste#symbol      = 'ρ'
else
  let g:airline#extensions#tabline#left_sep = ' '
  let g:airline#extensions#tabline#left_alt_sep = '|'
  let g:airline_left_sep          = '▶'
  let g:airline_left_alt_sep      = '»'
  let g:airline_right_sep         = '◀'
  let g:airline_right_alt_sep     = '«'
  let g:airline#extensions#branch#prefix     = '⤴' "➔, ➥, ⎇
  let g:airline#extensions#readonly#symbol   = '⊘'
  let g:airline#extensions#linecolumn#prefix = '¶'
  let g:airline#extensions#paste#symbol      = 'ρ'
endif

set tabline=%!tabber#TabLine()



:au BufEnter * if &buftype == 'terminal' | :startinsert | endif
autocmd BufWinEnter,WinEnter term://* startinsert
tnoremap <ESC> <C-\><C-n>:buffer #<CR>

