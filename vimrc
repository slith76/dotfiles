"==============================================================================
"                                ~My vimrc~
"==============================================================================
" Author:        Oliver Friedrich [http://aptgetupdate.de]
" Source:        https://github.com/slith76/dotfiles
"
" My vim configuration, organized all into individual files
" by functionality. These live in ~/.vim/rcfiles.
" based on Config from https://github.com/christoomey/dotfiles/
"
" I am using Vundle to manage my plugins, which is configured below
" Each plugin is configured in its own file in ~/.vim/rcplugins
"------------------------------------------------------------------------------

let mapleader = ","

function! s:SourceConfigFilesIn(directory)
  let directory_splat = '~/.vim/' . a:directory . '/*'
  for config_file in split(glob(directory_splat), '\n')
    if filereadable(config_file)
        execute 'source' config_file
    endif
  endfor
endfunction

" Setup Vundle to manage my bundles
"------------------------------------------------------------------------------
filetype off " required!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()


" Plugins are each listed in their own file. Loop and source ftw
"------------------------------------------------------------------------------
call s:SourceConfigFilesIn('rcplugins')

filetype plugin indent on " required!
syntax on

" Vimrc is split accross multiple files, so loop over and source each
"------------------------------------------------------------------------------
call s:SourceConfigFilesIn('rcfiles')

"==============================================================================
