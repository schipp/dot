
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'davidhalter/jedi-vim'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-python/python-syntax'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'scrooloose/nerdtree'



" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

syntax on
" os clipboard
set clipboard=unnamed
" command-line completion
set wildmenu
" fast tty connect
set ttyfast
" respect modeline
set modeline
set modelines=4
" highlight current line 
set cursorline
" tab length
set tabstop=4
" highlight search
set hlsearch
" highlight while typing searching
set incsearch
" autocompl commands
set showcmd
" sidebar
set ruler
set number
if exists("&relativenumber")
	set relativenumber
	au BufReadPost * set relativenumber
endif
" scroll 3lines from end
set scrolloff=3

" Strip trailing whitespace (,ss)
function! StripWhitespace()
	let save_cursor = getpos(".")
	let old_query = getreg('/')
	:%s/\s\+$//e
	call setpos('.', save_cursor)
	call setreg('/', old_query)
endfunction
noremap <leader>ss :call StripWhitespace()<CR>

" Automatic commands
if has("autocmd")
	" Enable file type detection
	filetype on
	" Treat .json files as .js
	autocmd BufNewFile,BufRead *.json setfiletype json syntax=javascript
	" Treat .md files as Markdown
	autocmd BufNewFile,BufRead *.md setlocal filetype=markdown
endif

" plugin settings
let g:python_highlight_all = 1
let g:airline_theme="tomorrow"
let g:ycm_autoclose_preview_window_after_completion=1




" let g:airline_solarized_bg='dark'
