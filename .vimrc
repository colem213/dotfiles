set tabstop=2 shiftwidth=2 expandtab relativenumber

call plug#begin('~/.vim/bundle')

Plug 'https://github.com/scrooloose/nerdtree.git'

Plug 'https://github.com/jeffkreeftmeijer/vim-numbertoggle.git'

Plug 'https://github.com/tpope/vim-surround.git'

Plug 'https://github.com/Valloric/YouCompleteMe.git'

Plug 'https://github.com/altercation/vim-colors-solarized.git'

call plug#end()

autocmd VimEnter * NERDTree
autocmd VimEnter * if argc() | wincmd p | endif
