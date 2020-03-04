" ======================== "
" === Self set manager === "
" ======================== "

set number
set clipboard+=unnamedplus " yay -S xsel
set nofoldenable
set relativenumber
set autoread
set completeopt=preview,menu
set cursorline
set autowrite
set autoindent
set cindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set hlsearch
set ignorecase
set smartcase
set enc=utf-8
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
set showcmd
set wildmenu
set scrolloff=10
set t_Co=256
set virtualedit=block,onemore
set whichwrap+=<,>,h,l
set nowrap

autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | execute "normal! g'\"" | endif
