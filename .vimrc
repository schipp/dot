syntax on
set nocompatible
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
