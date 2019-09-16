" Vundle boiler plate
set nocompatible 
filetype off

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage itself
Plugin 'gmarik/Vundle.vim'

" Plugins
Plugin 'altercation/vim-colors-solarized'

call vundle#end()
filetype plugin indent on
" End Vundle boiler plate


" Set hybrid relative/absolute numbers
" https://jeffkreeftmeijer.com/vim-number/
set number relativenumber
augroup numbertoggle
	autocmd!
	autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
	autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END


" Set colorscheme
syntax enable
set background=dark
colorscheme solarized

" Set font
set guifont=Menlo\ Regular:h14

" Ideas for the future
" https://dev.to/allanmacgregor/vim-is-the-perfect-ide-e80
" https://github.com/amacgregor/dot-files
