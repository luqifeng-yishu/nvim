" ====================================== "
" === Self deined keyboard shortcuts === "
" ====================================== "

let mapleader = "," 
map <A-u> ^
map <A-i> $
map <c-s> :w<CR>
map <c-p> :FZF<CR>
map <leader>+ a<++><esc>
map <c-f> :CocList files<CR>
map <space><CR> :nohlsearch<CR>
map <leader>r :source $MYVIMRC<CR>

inoremap qq <esc>

filetype indent on

" ===
" === buffers
" ===
nnoremap <c-m> :bprevious<cr>
nnoremap <c-n> :bNext<cr>
nnoremap <leader>bd :bd<CR>

" ===
" === find next
" ===
map <space><space> <ESC>/<++><CR>:nohlsearch<CR>c4l

" ===
" === split
" ===
map su :set splitright<CR>:vsp<CR>
map si :set splitbelow<CR>:sp<CR>
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l
nnoremap <up> :res +5<CR>
nnoremap <down> :res -5<CR>
nnoremap <left> :vertical resize-5<CR>
nnoremap <right> :vertical resize+5<CR>

" ===
" === Run code
" ===
map <F5> :call RunCode()<CR>

" ===
" === tab
" ===
" map eu :tabe<CR>
" map <C-m> :-tabnext<CR>
" map <C-n> :+tabnext<CR>

" ===
" === spell check and change
" ===
map <leader>sp :set spell!<CR>
noremap <C-x> ea<C-x>s
inoremap <C-x> <C-x>s
