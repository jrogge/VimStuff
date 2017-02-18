syntax on
set tabstop=8
set expandtab
set shiftwidth=4
set softtabstop=4
set modeline
filetype indent on

" make columns past 80 characters a different color
execute "set colorcolumn=" . join(range(81,335), ',')
" overrides color scheme, forcing the background to be the right color
autocmd Colorscheme * hi ColorColumn ctermbg=235 guibg=#BFBFBF


colorscheme blackboard
