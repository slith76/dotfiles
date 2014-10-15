" Plugins via vbundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'scrooloose/nerdtree'
Bundle 'kien/ctrlp.vim'
Bundle 'bling/vim-airline'
Bundle 'flazz/vim-colorschemes'
Bundle 'rking/ag.vim'
Bundle 'sjl/gundo.vim'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
"Bundle 'garbas/vim-snipmate'
Bundle 'SirVer/ultisnips'
let g:UltiSnipsExpandTrigger       = "<c-j>"
let g:UltiSnipsJumpForwardTrigger  = "<c-j>"
let g:UltiSnipsJumpBackwardTrigger = "<c-p>"
let g:UltiSnipsListSnippets        = "<c-k>" "List possible snippets based on current file
Bundle 'honza/vim-snippets'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-repeat'
" shortcut 'gc'
Bundle 'tpope/vim-commentary'
" Git integration
Bundle 'tpope/vim-fugitive'
let g:fugitive_git_executable="LC_ALL=en_US.UTF-8 git"
" Plugin for Autocompletion
Bundle 'davidhalter/jedi-vim'
Bundle 'klen/python-mode'
" Override go-to.definition key shortcut to Ctrl-]
" let g:pymode_rope_goto_definition_bind = "<C-]>"

Bundle 'Valloric/YouCompleteMe'
" !  Mac: brew install cmake
" !  Linux: apt-get install build-essential cmake python-dev
" !  cd ~/.vim/bundle/YouCompleteMe
" !  ./install.sh --clang-completer
let g:ycm_collect_identifiers_from_tags_files = 1 " Let YCM read tags from Ctags file
let g:ycm_use_ultisnips_completer = 1 " Default 1, just ensure
let g:ycm_seed_identifiers_with_syntax = 1 " Completion for programming language's keyword
let g:ycm_complete_in_comments = 1 " Completion in comments
let g:ycm_complete_in_strings = 1 " Completion in string
"
" Plugin for sessions
Bundle 'xolox/vim-misc'
Bundle 'xolox/vim-session'
"let g:session_directory = "~/.vim/session"
let g:session_autoload = "no"
let g:session_autosave = "no"
let g:session_command_aliases = 1
" Plugin auto-pairs
Bundle 'jiangmiao/auto-pairs'

Bundle 'sukima/xmledit'

" Plugin for Ack (better fgrep)
Bundle 'mileszs/ack.vim'

" Plugin for TabEdit
Bundle "godlygeek/tabular"

" Plugin for visual selecting ({}) with viv
Bundle "gorkunov/smartpairs.vim"

" shortcut for open nerdtree
nnoremap <f5> :NERDTreeToggle<cr>
" shortcut for gundo
nnoremap <f6> :GundoToggle<cr>

" automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %
map <leader>a <C-a>h :w<CR>

" let nerdtree filter *.pyc files
let NERDTreeIgnore = ['\.pyc$']

autocmd BufNewFile,BufReadPost *.md set filetype=markdown

autocmd Filetype html nnoremap <leader>c I<!--<esc>A--><esc>
autocmd Filetype javascript nnoremap <leader>c I//<esc>>


set encoding=utf-8
set wildmenu
set hidden



" better copy & paste
" when you want to paste large blocks of code into vim, press f2 before you
" paste. at the bottom you should see ``-- insert (paste) --``.

set pastetoggle=<f2>
set clipboard=unnamed

" airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
if !exists('g:airline_symbols')
      let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"
let g:airline_theme="jellybeans"
let g:airline_powerline_fonts=1
let g:airline_section_b = '%{fugitive#statusline()}'
let g:airline_section_c = '%{getcwd()} :: %t'



" mouse and backspace
set mouse=a  " on osx press alt and click
set bs=2     " make backspace behave like normal again


" rebind <leader> key
" i like to have it here becuase it is easier to reach than the default and
" it is next to ``m`` and ``n`` which i use for navigating between tabs.
let mapleader = ","


" bind nohl
" removes highlight of your last search
" ``<c>`` stands for ``ctrl`` and therefore ``<c-n>`` stands for ``ctrl+n``
noremap <c-n> :nohl<cr>
vnoremap <c-n> :nohl<cr>
inoremap <c-n> :nohl<cr>


" quicksave command
noremap <c-z> :update<cr>
vnoremap <c-z> <c-c>:update<cr>
inoremap <c-z> <c-o>:update<cr>


" quick quit command
noremap <leader>e :quit<cr>  " quit current window
noremap <leader>e :qa!<cr>   " quit all windows

" custom unvisibles
set list
set listchars=tab:▸\ ,eol:¬,trail:⋅,extends:❯,precedes:❮
set showbreak=↪
nmap <leader>l :set list!<CR>


" bind ctrl+<movement> keys to move around the windows, instead of using ctrl+w + <movement>
" every unnecessary keystroke that can be saved is good for your health :)
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h


" easier moving between tabs
map <leader>n <esc>:tabprevious<cr>
map <leader>m <esc>:tabnext<cr>


" map sort function to a key
vnoremap <leader>s :sort<cr>


" easier moving of code blocks
" try to go into visual mode (v), thenselect several lines of code here and
" then press ``>`` several times.
vnoremap < <gv  " better indentation
vnoremap > >gv  " better indentation


" show whitespace
" must be inserted before the colorscheme command
autocmd colorscheme * highlight extrawhitespace ctermbg=red guibg=red
au insertleave * match extrawhitespace /\s\+$/


" color scheme
set t_Co=256
colorscheme jellybeans-olif


" enable syntax highlighting
" you need to reload this file for the change to apply
filetype off
filetype plugin indent on
syntax on


" showing line numbers and length
set number  " show line numbers
set tw=79   " width of document (used by gd)
set nowrap  " don't automatically wrap on load
set fo-=t   " don't automatically wrap text when typing
set colorcolumn=80
highlight colorcolumn ctermbg=233


" easier formatting of paragraphs
"" vmap q gq
"" nmap q gqap


" useful settings
set history=700
set undolevels=700


" real programmers don't use tabs but spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab


" make search case insensitive
set hlsearch
set incsearch
set ignorecase
set smartcase


" disable stupid backup and swap files - they trigger too many events
" for file system watchers
set nobackup
set nowritebackup
set noswapfile


" setup pathogen to manage your plugins
" mkdir -p ~/.vim/autoload ~/.vim/bundle
" curl -so ~/.vim/autoload/pathogen.vim https://raw.githubusercontent.com/tpope/vim-pathogen/master/autoload/pathogen.vim
" now you can install any plugin into a .vim/bundle/plugin-name/ folder
" call pathogen#infect()


" ============================================================================
" python ide setup
" ============================================================================


" settings for vim-powerline
" cd ~/.vim/bundle
" git clone git://github.com/lokaltog/vim-powerline.git
set laststatus=2


" settings for ctrlp
" cd ~/.vim/bundle
" git clone https://github.com/kien/ctrlp.vim.git
let g:ctrlp_max_height = 30
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=*/coverage/*


" settings for python-mode
" note: i'm no longer using this. leave this commented out
" and uncomment the part about jedi-vim instead
" cd ~/.vim/bundle
" git clone https://github.com/klen/python-mode
map <leader>g :call ropegotodefinition()<cr>
let ropevim_enable_shortcuts = 1
let g:pymode_rope_goto_def_newwin = "vnew"
let g:pymode_rope_extended_complete = 1
let g:pymode_breakpoint = 0
let g:pymode_syntax = 1
let g:pymode_syntax_builtin_objs = 0
let g:pymode_syntax_builtin_funcs = 0
map <leader>b oimport ipdb; ipdb.set_trace() # breakpoint<c-c>

" settings for jedi-vim
" cd ~/.vim/bundle
" git clone git://github.com/davidhalter/jedi-vim.git
let g:jedi#usages_command = "<leader>z"
let g:jedi#popup_on_dot = 0
let g:jedi#popup_select_first = 0
map <leader>b oimport ipdb; ipdb.set_trace() # breakpoint<c-c>

" better navigating through omnicomplete option list
" see http://stackoverflow.com/questions/2170023/how-to-map-keys-for-popup-menu-in-vim
set completeopt=longest,menuone
function! Omnipopup(action)
     if pumvisible()
         if a:action == 'j'
             return "\<c-n>"
         elseif a:action == 'k'
             return "\<c-p>"
         endif
     endif
     return a:action
endfunction

inoremap <silent><c-j> <c-r>=Omnipopup('j')<cr>
inoremap <silent><c-k> <c-r>=Omnipopup('k')<cr>

" python folding
" mkdir -p ~/.vim/ftplugin
" wget -o ~/.vim/ftplugin/python_editing.vim http://www.vim.org/scripts/download_script.php?src_id=5492
set nofoldenable

" unmap the arrow keys
"no <up> <nop>
"no <down> <nop>
"no <left> <nop>
"no <right> <nop>
"ino <down> <nop>
"ino <up> <nop>
"ino <left> <nop>
"ino <right> <nop>

" Bubble single lines
nmap <C-Up> ddkP
nmap <C-Down> ddp
" Bubble multiple lines
vmap <C-Up> xkP`[V`]
vmap <C-Down> xp`[V`]`]]`"

set cursorline
hi CursorLine cterm=NONE ctermbg=234 ctermfg=NONE

"let g:Powerline_symbols = 'fancy'

" Snippets
"
inoreabbrev teh the
cnoreabbrev Wq wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
