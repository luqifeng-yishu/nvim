" =========================== "
" === Plugin manager list === "
" =========================== "

call plug#begin('~/.config/nvim/plugged')

" editor enhancement
Plug 'chxuan/vim-edit'
Plug 'godlygeek/tabular'
Plug 'gcmt/wildfire.vim'
Plug 'tpope/vim-surround'
Plug 'rhysd/clever-f.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'terryma/vim-multiple-cursors'
Plug 'MattesGroeger/vim-bookmarks'

" visual enhancement
Plug 'mhinz/vim-startify'
Plug 'luochen1990/rainbow'
Plug 'tpope/vim-commentary'
Plug 'junegunn/vim-peekaboo'
Plug 'itchyny/vim-cursorword'
Plug 'ryanoasis/vim-devicons'

" repl
Plug 'rhysd/reply.vim', { 'on': ['Repl', 'ReplAuto'] }

" indent
Plug 'Yggdroot/indentLine'
Plug 'nine2/vim-indent-guides'

" vim + ranger
Plug 'rbgrouleff/bclose.vim'
Plug 'francoiscabrol/ranger.vim'

" Taglist
Plug 'liuchengxu/vista.vim'

" airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" markdown
Plug 'theniceboy/bullets.vim'
Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle' }
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install_sync() }, 'for' :['markdown', 'vim-plug'] }

" git
Plug 'junegunn/gv.vim'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Snippets
" Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" python
Plug 'tmhedberg/SimpylFold'
Plug 'tweekmonster/braceless.vim'
Plug 'plytophogy/vim-virtualenv', { 'for' :['python', 'vim-plug'] }
Plug 'vim-scripts/indentpython.vim', { 'for' :['python', 'vim-plug'] }
Plug 'numirias/semshi', { 'do': ':UpdateRemotePlugins' }
Plug 'Vimjas/vim-python-pep8-indent', { 'for' :['python', 'vim-plug'] }

" cpp
Plug 'octol/vim-cpp-enhanced-highlight'

" HTML, CSS, JavaScript, JSON, etc.
Plug 'yuezk/vim-js'
Plug 'elzr/vim-json'
Plug 'hail2u/vim-css3-syntax'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'jelera/vim-javascript-syntax'
Plug 'pangloss/vim-javascript', { 'for' :['javascript', 'vim-plug'] }
Plug 'gko/vim-coloresque', { 'for': ['vim-plug', 'html','javascript', 'css', 'less'] }

" colorscheme
Plug 'liuchengxu/space-vim-dark'

" undo tree
Plug 'mbbill/undotree'

" NERDTree
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

" find
Plug 'brooth/far.vim'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', {'dir': '~/.fzf', 'do': './install --all'}

call plug#end()


" ===
" === Auto load for first time uses
" ===
if empty(glob('~/.config/nvim/plugged'))
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
else
	" plug config
	source ~/.config/nvim/config/config.vim
endif
