execute pathogen#infect()
"set runtimepath^=~/.vim/bundle/vim-tex-fold/after/tex.vim
"TODO: set up folding script (above)
"TODO: learn about viminfo file

" default backspace unintuitive because of vi when installed via homebrew
" https://github.com/Homebrew/legacy-homebrew/issues/46899
set backspace=2
set number
set splitright
set splitbelow

"========
" Python config
"========
syntax on
set tabstop=8
set expandtab
set shiftwidth=4
set softtabstop=4
set modeline
filetype indent on

"========
" Ultisnips
"========
"Trigger configuration
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-l>"

"========
" Colorscheme/80 col bar
"========
" make columns past 80 characters a different color
execute "set colorcolumn=" . join(range(81,335), ',')
" overrides color scheme, forcing the background to be the right color
autocmd Colorscheme * hi ColorColumn ctermbg=235 guibg=#BFBFBF

colorscheme gruvbox
let g:gruvbox_contrast_dark='hard'
set background=dark
"let g:gruvbox_contrast_light='hard'
"set background=light
"colorscheme blackboard

" turn expandtab off for makefiles
autocmd filetype make set noexpandtab

"========
" cleaner running of Make
" doesn't require confirmation to return to vim, opens quickfix file if
" compilation fails
"========
"nnoremap <C-m> :silent make!\|redraw!\|cw<CR>
"temporarily disable quickfix window
nnoremap <C-m> :silent make!\|redraw!<CR>

"========
" make <shift>+O add a new line faster
"========
set ttimeoutlen=10

"========
" remember folds
"========
augroup remember_folds
  autocmd!
  autocmd BufWinLeave * mkview
  autocmd BufWinEnter * silent! loadview
augroup END
