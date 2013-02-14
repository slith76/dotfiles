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

" Plugins via vbundle
"
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'scrooloose/nerdtree'
Bundle 'Lokaltog/vim-powerline'
" Bundle 'Valloric/YouCompleteMe'

filetype plugin indent on     " required!
