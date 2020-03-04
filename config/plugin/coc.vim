" ===
" === coc
" ===
inoremap <silent><expr> <TAB>
\ pumvisible() ? "\<C-n>" :
\ <SID>check_back_space() ? "\<TAB>" :
\ coc#refresh()
inoremap <expr><S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <silent><expr> <c-space> coc#refresh()
let g:coc_global_extensions = ['coc-python', 'coc-java', 'coc-vimlsp', 'coc-html', 'coc-json', 'coc-css', 'coc-tsserver', 'coc-yank', 'coc-lists', 'coc-gitignore', 'coc-vimlsp', 'coc-tailwindcss', 'coc-stylelint', 'coc-snippets', 'coc-translator', 'coc-calc']
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

function! s:check_back_space() abort
let col = col('.') - 1
return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" popup
nmap ts <Plug>(coc-translator-p)
vmap ts <Plug>(coc-translator-pv)
" echo
nmap te <Plug>(coc-translator-e)
vmap te <Plug>(coc-translator-ev)
" replace
nmap tr <Plug>(coc-translator-r)
vmap tr <Plug>(coc-translator-rv)
" history
map th :CocList translation<CR>

" ===
" === GoTo code navigation
" ===
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> gt <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)

" ===
" === Calculate extension
" ===
" append result on current expression
nmap <Leader>ca <Plug>(coc-calc-result-append)
" replace result on current expression
nmap <Leader>cr <Plug>(coc-calc-result-replace)

" other
nmap <leader>rn <Plug>(coc-rename)
nnoremap <leader>p :CocList -A --normal yank<CR>

" ===
" === coc-snippets && UltiSnips
" ===
let g:coc_snippet_next = '<c-j>'
let g:coc_snippet_prev = '<c-k>'
imap <C-l> <Plug>(coc-snippets-expand)
vmap <C-j> <Plug>(coc-snippets-select)
imap <C-j> <Plug>(coc-snippets-expand-jump)
" inoremap <silent><expr> <TAB>
"       \ pumvisible() ? coc#_select_confirm() :
"       \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
"       \ <SID>check_back_space() ? "\<TAB>" :
"       \ coc#refresh()
let g:UltiSnipsExpandTrigger="<c-i>"
" let g:UltiSnipsJumpForwardTrigger="<c-m>"
" let g:UltiSnipsJumpBackwardTrigger="<c-n>"
let g:UltiSnipsSnippetDirectories = [$HOME.'/.config/nvim/Ultisnips/', 'UltiSnips']

