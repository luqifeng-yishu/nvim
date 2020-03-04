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

