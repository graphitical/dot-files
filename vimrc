" https://howchoo.com/g/m2u0nthkyti/vim-convert-tabs-to-spaces
set tabstop=4 shiftwidth=4 expandtab

let g:ale_completion_enabled = 1


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
Plugin 'jiangmiao/auto-pairs'
Plugin 'dense-analysis/ale'
Plugin 'junegunn/fzf', {'dir': '~/.fzf', 'do': './install --all' }
Plugin 'tpope/vim-commentary'

call vundle#end()
filetype plugin indent on
" End Vundle boiler plate

" Ale stuff
let g:ale_linters = { 'cpp' : ['clangd'] , 'python' :['flake8']}

" === Cursor Stuff ===
" Set hybrid relative/absolute numbers
" https://jeffkreeftmeijer.com/vim-number/
set number relativenumber
augroup numbertoggle
	autocmd!
	autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
	autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END
" Set line highlight
set cursorline

" Set colorscheme
syntax enable
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
" Scripts
" map <Enter> !run556
nmap <Left> <C-W>h
nmap <Right> <C-W>l
" Ideas for the future
" https://dev.to/allanmacgregor/vim-is-the-perfect-ide-e80
" https://github.com/amacgregor/dot-files
