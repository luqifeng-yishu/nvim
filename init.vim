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
"———————————————————————————————————————————————————

set nu
set relativenumber
set syntax=on
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
set scrolloff=5
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

" golang
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'nsf/gocode', { 'rtp': 'nvim', 'do': '~/.config/nvim/plugged/gocode/nvim/symlink.sh' }

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

" color
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
" === color
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
let g:coc_global_extensions = ['coc-python', 'coc-go', 'coc-vimlsp', 'coc-html', 'coc-json', 'coc-css', 'coc-tsserver', 'coc-yank', 'coc-lists', 'coc-gitignore', 'coc-vimlsp', 'coc-tailwindcss', 'coc-stylelint']
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
" === vim-go
" ===
let g:go_template_autocreate = 0
let g:go_textobj_enabled = 0
let g:go_auto_type_info = 1
let g:go_def_mapping_enabled = 1
let g:go_highlight_array_whitespace_error    = 1
let g:go_highlight_build_constraints         = 1
let g:go_highlight_chan_whitespace_error     = 1
let g:go_highlight_extra_types               = 1
let g:go_highlight_fields                    = 1
let g:go_highlight_format_strings            = 1
let g:go_highlight_function_calls            = 1
let g:go_highlight_function_parameters       = 1
let g:go_highlight_functions                 = 1
let g:go_highlight_generate_tags             = 1
let g:go_highlight_methods                   = 1
let g:go_highlight_operators                 = 1
let g:go_highlight_space_tab_error           = 1
let g:go_highlight_string_spellcheck         = 1
let g:go_highlight_structs                   = 1
let g:go_highlight_trailing_whitespace_error = 1
let g:go_highlight_types                     = 1
let g:go_highlight_variable_assignments      = 0
let g:go_highlight_variable_declarations     = 0

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
nnoremap <c-n> :NextBuffer<cr>
nnoremap <c-m> :PreviousBuffer<cr>

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
map <c-h> <c-w>h map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l

" ===
" === Test
" ===
map <F5> :call Test()<CR>
function! Test()
	if &filetype == 'go'
		exec ":set splitbelow"
		:sp
		:term go run %
	elseif &filetype == 'python'
		exec ":set splitbelow"
		:sp
		:term python3 %
	elseif &filetype == 'html'
		silent! exec "!google-chrome % &"
	elseif &filetype == 'markdown'
		exec "MarkdownPreview"
	endif
endfunction

" ===
" === terminal
" ===
map <F4> :set splitright<CR>:vsp<CR>:term<CR>i

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
" === find next <++>
" ===
map <space><space> <ESC>/<++><CR>:nohlsearch<CR>c4l

" === 
" === vim-multiple-cursors
" === 
let g:multi_cursor_next_key = '<C-n>'
let g:multi_cursor_skip_key = '<C-x>'
let g:multi_cursor_start_word_key = '<C-t>'

let g:python3_host_prog="/usr/bin/python3"
