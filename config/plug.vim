" =========================== "
" === Plugin manager list === "
" =========================== "

call plug#begin('~/.config/nvim/plugged')

" editor enhancement
Plug 'jiangmiao/auto-pairs'
Plug 'godlygeek/tabular'
Plug 'rhysd/clever-f.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'MattesGroeger/vim-bookmarks'

" visual enhancement
Plug 'mhinz/vim-startify'
Plug 'tpope/vim-commentary'
Plug 'junegunn/vim-peekaboo'
Plug 'itchyny/vim-cursorword'
Plug 'ryanoasis/vim-devicons'

" indent
Plug 'nine2/vim-indent-guides'
Plug 'Yggdroot/indentLine'

" vim + ranger
Plug 'francoiscabrol/ranger.vim'
Plug 'rbgrouleff/bclose.vim'

" chxuan
Plug 'chxuan/tagbar'
Plug 'chxuan/vim-edit'

" airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install_sync() }, 'for' :['markdown', 'vim-plug'] }
Plug 'theniceboy/bullets.vim'

" git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'

" coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" python
Plug 'tmhedberg/SimpylFold'
Plug 'Vimjas/vim-python-pep8-indent', { 'for' :['python', 'vim-plug'] }
Plug 'numirias/semshi', { 'do': ':UpdateRemotePlugins' }
Plug 'vim-scripts/indentpython.vim', { 'for' :['python', 'vim-plug'] }
Plug 'plytophogy/vim-virtualenv', { 'for' :['python', 'vim-plug'] }
Plug 'tweekmonster/braceless.vim'

" cpp
Plug 'octol/vim-cpp-enhanced-highlight'

" HTML, CSS, JavaScript, JSON, etc.
Plug 'elzr/vim-json'
Plug 'hail2u/vim-css3-syntax'
Plug 'gko/vim-coloresque', { 'for': ['vim-plug', 'html','javascript', 'css', 'less'] }
Plug 'pangloss/vim-javascript', { 'for' :['javascript', 'vim-plug'] }
Plug 'yuezk/vim-js'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'jelera/vim-javascript-syntax'

" colorscheme
Plug 'liuchengxu/space-vim-dark'

" undo tree
Plug 'mbbill/undotree'

"NERDTree
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'

" fzf
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', {'dir': '~/.fzf', 'do': './install --all'}
Plug 'junegunn/fzf'

" Snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

call plug#end()

" plug config
source ~/.config/nvim/config/config.vim
