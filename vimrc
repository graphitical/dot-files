" https://howchoo.com/g/m2u0nthkyti/vim-convert-tabs-to-spaces
set tabstop=2 shiftwidth=2 expandtab

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
Plugin 'scrooloose/nerdtree'

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
let g:solarized_termcolors=256
set background=dark
colorscheme solarized

" Set font
set guifont=Menlo\ Regular:h14

" Set NerdTree Details
map <C-n> :NERDTreeToggle<CR>
" Open NerdTree automatically if no file was specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" Open NerdTree automatically if no file was specified AND set current editor
" directory to pwd
" autocmd StdinReadPre * let s:std_in=1
autocmd Vimenter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
" Ideas for the future
" https://dev.to/allanmacgregor/vim-is-the-perfect-ide-e80
" https://github.com/amacgregor/dot-files
