" Vim editor config
syntax on
set number relativenumber
set cursorline
hi cursorline cterm=none term=none
highlight CursorLine guibg=#303000 ctermbg=236
set cursorcolumn
highlight CursorColumn guibg=#303000 ctermbg=236

set autoindent
set ignorecase
set hlsearch
set incsearch
set smartcase
set noerrorbells
set visualbell
"set ruler

" Vim statusline color schemes
hi User1 ctermbg=228 ctermfg=black   guibg=green guifg=red
hi User2 ctermbg=250 ctermfg=black   guibg=green guifg=red
hi User3 ctermbg=236 ctermfg=white   guibg=green guifg=red
hi User4 ctermbg=green ctermfg=black   guibg=green guifg=red
hi User5 ctermbg=red ctermfg=0   guibg=green guifg=red
hi User6 ctermbg=180 ctermfg=black   guibg=green guifg=red
hi User7 ctermbg=132 ctermfg=black   guibg=green guifg=red
hi User8 ctermbg=80 ctermfg=black   guibg=green guifg=red
hi User9 ctermbg=182 ctermfg=black   guibg=green guifg=red
hi User10 ctermbg=white ctermfg=black   guibg=green guifg=red

" Vim statusline config (monochrome except flags)
set laststatus=2
set statusline=
set statusline+=%3* 
set statusline+=\ \●\ %{strftime('%H:%M')}\ 		"Time
set statusline+=%2* 
set statusline+=\ \🖿\ %F\  				"Absolute file path
set statusline+=%=					"Right align
set statusline+=%5* 
set statusline+=\%0.4m					"Modification flag 
set statusline+=%7* 
set statusline+=%0.4r					"Read only flag 
set statusline+=%3*
set statusline+=\ \▮\ %0.20t\  				"File name
set statusline+=%2* 
set statusline+=\ \▬\ %03.3b\ 				"Char code
set statusline+=%3* 
set statusline+=\ \⚑\ %P\     				"percent through file
set statusline+=%2* 
set statusline+=\ \▲\ %04.4l				"Cursor row number
set statusline+=/
set statusline+=%04.4L					"Total row number
set statusline+=:
set statusline+=%02.2c\ \▼\  				"Cursor column number

"set statusline=%t       "tail of the filename
"set statusline+=[%{strlen(&fenc)?&fenc:'none'}, "file encoding
"set statusline+=%{&ff}] "file format
"set statusline+=%h      "help file flag
"set statusline+=%m      "modified flag
"set statusline+=%r      "read only flag
"set statusline+=%y      "filetype
"set statusline+=%=      "left/right separator
"set statusline+=%c,     "cursor column
"set statusline+=%l/%L   "cursor line/total lines
"set statusline+=\ %P    "percent through file
"set statusline+=%55(%{strftime('%a\ %b\ %e\ %I:%M\ %p')}\ %5l,%-6(%c%V%)\ %P%)

"-------------------------------------------------------------------------------------
" Python file indentation rules
" Source : https://vi.stackexchange.com/questions/13034/automatic-whitespace-in-python
" ---- Minimal configuration:
"set smartindent   " Do smart autoindenting when starting a new line
"set shiftwidth=4  " Set number of spaces per auto indentation
"set expandtab     " When using <Tab>, put spaces instead of a <tab> character

" ---- Good to have for consistency
" set tabstop=4   " Number of spaces that a <Tab> in the file counts for
" set smarttab    " At <Tab> at beginning line inserts spaces set in shiftwidth

" ---- Bonus for proving the setting
" Displays '-' for trailing space, '>-' for tabs and '_' for non breakable space
"set listchars=tab:>-,trail:-,nbsp:_
"set list 
"---------------------------------------------------------------------------------------
