" 
" my custom .vimrc @slith76
" + vbundle plugins
"

" Options
"
set nocompatible                " be iMproved
filetype off                    " required!
syntax on			" Syntax
set laststatus=2   		" Always show the statusline
set encoding=utf-8 		" Necessary to show Unicode glyphs
set number			"  
set nobackup
set nowritebackup
set noswapfile    		" http://robots.thoughtbot.com/post/18739402579/global-gitignore#comment-458413287
set history=100
set ruler 		        " show the cursor position all the time
set showcmd 			" display incomplete commands
set incsearch			" do incremental searching
set hlsearch

" Plugins via vbundle
"
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'tpope/vim-fugitive'
"Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
"Bundle 'tpope/vim-rails.git'
"Bundle 'L9'
"Bundle 'FuzzyFinder'
Bundle 'scrooloose/nerdtree'
Bundle 'Lokaltog/vim-powerline'
"Bundle 'Valloric/YouCompleteMe'
"Bundle "MarcWeber/vim-addon-mw-utils"
"Bundle "tomtom/tlib_vim"
"Bundle "honza/snipmate-snippets"
"Bundle "garbas/vim-snipmate"
Bundle 'Lokaltog/vim-easymotion'
let g:EasyMotion_leader_key = '<Leader>'
Bundle 'tpope/vim-surround'
Bundle 'ervandew/supertab'
Bundle 'airblade/vim-gitgutter'

filetype plugin indent on     	" required!

" Shortcut definitions

let mapleader = ","

" Shortcut to rapidly toggle `set list`
nmap <S-l> :set list!<CR>	" Shift-l
vmap <A-l> :set list!<CR>

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬

if has("mac") || has("macunix")
	nmap <D-l> <M-l>
	imap <D-l> <M-l>
	vmap <D-l> <M-l>
endif

" Theme Option
"
color blackboard 		" only works in gui-mode ?wtf?

" Autostart
"
autocmd VimEnter * NERDTree
autocmd BufEnter * NERDTreeMirror
autocmd VimEnter * wincmd w

" GitCutter
"
let g:gitgutter_enabled = 1

nmap gh <Plug>GitGutterNextHunk
nmap gH <Plug>GitGutterPrevHunk
