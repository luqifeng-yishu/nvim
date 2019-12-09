"————————————————————————————————————————————————————————————————
"  ____                _     _       _   ___     _____ __  __   |
" |  _ \ ___  ___  ___| | __| |     | \ | \ \   / /_ _|  \/  |  |
" | |_) / _ \/ __|/ __| |/ _` |_____|  \| |\ \ / / | || |\/| |  |
" |  _ <  __/\__ \ (__| | (_| |_____| |\  | \ V /  | || |  | |  |
" |_| \_\___||___/\___|_|\__,_|     |_| \_|  \_/  |___|_|  |_|  |
"————————————————————————————————————————————————————————————————
" Author: rescld <root@rescld.cn>                  |
" Repository: https://github.com/rescld-code/nvim  |
" Create Date: 2019-11-20                          |
" Update Date: 2019-11-23                          |
"———————————————————————————————————————————————————

set number
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

silent !mkdir -p ~/.config/nvim/tmp/backup
silent !mkdir -p ~/.config/nvim/tmp/undo
set backupdir=~/.config/nvim/tmp/backup,.
set directory=~/.config/nvim/tmp/backup,.
if has('persistent_undo')
	set undofile
	set undodir=~/.config/nvim/tmp/undo,.
endif

let mapleader = "," 
map R :source $MYVIMRC<CR>
map <space><CR> :nohlsearch<CR>
filetype indent on

call plug#begin('~/.config/nvim/plugged')

Plug 'ryanoasis/vim-devicons'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-commentary'
Plug 'godlygeek/tabular'
Plug 'rhysd/clever-f.vim'
Plug 'mhinz/vim-startify'
Plug 'itchyny/vim-cursorword'
Plug 'terryma/vim-multiple-cursors'

" chxuan
Plug 'chxuan/tagbar'
Plug 'chxuan/vim-buffer'
Plug 'chxuan/vim-edit'

" airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install_sync() }, 'for' :['markdown', 'vim-plug'] }
Plug 'theniceboy/bullets.vim'

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

" HTML, CSS, JavaScript, PHP, JSON, etc.
Plug 'elzr/vim-json'
Plug 'hail2u/vim-css3-syntax'
Plug 'spf13/PIV', { 'for' :['php', 'vim-plug'] }
Plug 'gko/vim-coloresque', { 'for': ['vim-plug', 'php', 'html','javascript', 'css', 'less'] }
Plug 'pangloss/vim-javascript', { 'for' :['javascript', 'vim-plug'] }
Plug 'yuezk/vim-js'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'jelera/vim-javascript-syntax'

" colorscheme
Plug 'liuchengxu/space-vim-dark'

" navigation
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', {'dir': '~/.fzf', 'do': './install --all'}
Plug 'junegunn/fzf'
Plug 'francoiscabrol/ranger.vim'
Plug 'nine2/vim-indent-guides'
Plug 'Yggdroot/indentLine'

call plug#end()

" ===
" === colorscheme
" ===
colorscheme space-vim-dark
set termguicolors
hi Normal     ctermbg=NONE guibg=NONE
hi LineNr     ctermbg=NONE guibg=NONE
hi SignColumn ctermbg=NONE guibg=NONE

" ===
" === airline
" ===
let g:airline_theme = "dracula"
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''

" ===
" === MarkdownPreview
" ===
let g:mkdp_auto_start = 0
let g:mkdp_auto_close = 1
let g:mkdp_refresh_slow = 0
let g:mkdp_command_for_global = 0
let g:mkdp_open_to_the_world = 0
let g:mkdp_open_ip = ''
let g:mkdp_echo_preview_url = 0
let g:mkdp_browserfunc = ''
let g:mkdp_preview_options = {
			\ 'mkit': {},
			\ 'katex': {},
			\ 'uml': {},
			\ 'maid': {},
			\ 'disable_sync_scroll': 0,
			\ 'sync_scroll_type': 'middle',
			\ 'hide_yaml_meta': 1
			\ }
let g:mkdp_markdown_css = ''
let g:mkdp_highlight_css = ''
let g:mkdp_port = ''
let g:mkdp_page_title = '「${name}」'

" ===
" === Bullets.vim
" ===
let g:bullets_enabled_file_types = [
			\ 'markdown',
			\ 'text',
			\ 'gitcommit',
			\ 'scratch'
			\]

" ===
" === coc
" ===
let g:prepare_code_plugin_path = expand($HOME . "/.config/nvim/plugged/prepare-code")
inoremap <silent><expr> <TAB>
	\ pumvisible() ? "\<C-n>" :
	\ <SID>check_back_space() ? "\<TAB>" :
	\ coc#refresh()
inoremap <expr><S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <silent><expr> <c-space> coc#refresh()
let g:coc_global_extensions = ['coc-python', 'coc-java', 'coc-vimlsp', 'coc-html', 'coc-json', 'coc-css', 'coc-tsserver', 'coc-yank', 'coc-lists', 'coc-gitignore', 'coc-vimlsp', 'coc-tailwindcss', 'coc-stylelint']
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
function! s:check_back_space() abort
	let col = col('.') - 1
	return !col || getline('.')[col - 1]  =~# '\s'
endfunction
nmap <leader>rn <Plug>(coc-rename)

" ===
" === Python-syntax
" ===
let g:python_highlight_all = 1

" ===
" === cpp
" ===
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_posix_standard = 1
let g:cpp_experimental_simple_template_highlight = 1
let g:cpp_concepts_highlight = 1
let g:cpp_no_function_highlight = 1

" ===
" === NERDTree
" ===
nnoremap <silent> <leader>n :NERDTreeToggle<cr>
inoremap <silent> <leader>n <esc> :NERDTreeToggle<cr>
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
let g:NERDTreeHighlightFolders = 1         
let g:NERDTreeHighlightFoldersFullName = 1 
let g:NERDTreeDirArrowExpandable='▷'
let g:NERDTreeDirArrowCollapsible='▼'

" ==
" == NERDTree-git
" ==
let g:NERDTreeIndicatorMapCustom = {
			\ "Modified": "✹",
			\ "Staged": "✚",
			\ "Untracked" : "✭",
			\ "Renamed" : "➜",
			\ "Unmerged": "═",
			\ "Deleted" : "✖",
			\ "Dirty" : "✗",
			\ "Clean" : "✔︎",
			\ "Unknown" : "?"
			\}

" ===
" === tabular
" ===
nnoremap <leader>l :Tab /\|<cr>
nnoremap <leader>= :Tab /=<cr>
nnoremap <leader>:= :Tab /:=<cr>

" ===
" === tagbar
" ===
let g:tagbar_width = 30
nnoremap <silent> <leader>m :TagbarToggle<cr>
inoremap <silent> <leader>m <esc> :TagbarToggle<cr>

" ===
" === buffer
" ===
nnoremap <c-m> :NextBuffer<cr>
nnoremap <c-n> :PreviousBuffer<cr>

" ===
" === vim-edit
" ===
nnoremap Y :CopyText<cr>
nnoremap D :DeleteText<cr>
nnoremap C :ChangeText<cr>

" ===
" === split
" ===
map su :set splitright<CR>:vsp<CR>
map si :set splitbelow<CR>:sp<CR>
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l

" ===
" === Run code
" ===
map <F5> :call Run()<CR>
function! Run()
	exec "w"
	if &filetype == 'go'
		exec ":set splitbelow"
		:sp
		:terminal go run %
	elseif &filetype == 'python'
		exec ":set splitbelow"
		:sp
		:terminal python3 %
	elseif &filetype == 'html'
		silent! exec "!google-chrome % &"
	elseif &filetype == 'markdown'
		exec "MarkdownPreview"
	elseif &filetype == 'cpp' || &filetype == 'c'
		set splitbelow
		exec "!g++ -std=c++11 % -Wall -o %<"
		:sp
		:terminal ./%<
	elseif &filetype == 'java'
		set splitbelow
		exec "!find . -name '*.java' > temp"
		exec "!javac -d bin/ @temp"
		exec "!rm temp"
		:sp
		:terminal cd bin/&&java Main
	endif
endfunction

" ===
" === terminal
" ===
map <F4> :set splitright<CR>:vsp<CR>:terminal<CR>i

" ===
" === tab
" ===
map eu :tabe<CR>
map eh :-tabnext<CR>
map el :+tabnext<CR>

" ===
" === spell check and change
" ===
map <leader>sp :set spell!<CR>
noremap <C-x> ea<C-x>s
inoremap <C-x> <C-x>s

" ===
" === find next
" ===
map <space><space> <ESC>/<++><CR>:nohlsearch<CR>c4l

" === 
" === vim-multiple-cursors
" === 
let g:multi_cursor_next_key = '<C-n>'
let g:multi_cursor_skip_key = '<C-x>'
let g:multi_cursor_start_word_key = '<C-t>'

let g:python3_host_prog="/usr/bin/python3"
