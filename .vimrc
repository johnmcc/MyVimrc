" Make Vim read various Drupal file types as PHP
if has("autocmd")
  augroup module
    autocmd BufRead,BufNewFile *.module set filetype=php
    autocmd BufRead,BufNewFile *.install set filetype=php
    autocmd BufRead,BufNewFile *.test set filetype=php
    autocmd BufRead,BufNewFile *.inc set filetype=php
    autocmd BufRead,BufNewFile *.profile set filetype=php
    autocmd BufRead,BufNewFile *.view set filetype=php
  augroup END
endif
syntax on

" LESS support
au BufNewFile,BufRead *.less set filetype=less
autocmd BufRead,BufNewFile *.less set filetype=css

" Clear Drupal's cache on <F1> press
map <F1> :!drush cc <Enter>

" Map F4 press to close current buffer
map <F4> :bw <Enter>

" Zen Coding
let g:user_zen_expandabbr_key = '<c-d>'

" Line numbers
set number 

" Ignore case for buffer searches
set ignorecase
set smartcase

" Auto-indent when taking a new line
set autoindent
set copyindent

" No swap files. Useful comment is useful.
set noswapfile

" Remap Tab to find matching pairs of brackets
nnoremap <Tab> %
vnoremap <Tab> %