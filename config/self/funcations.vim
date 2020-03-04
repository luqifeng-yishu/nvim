" =============================== "
" === Self defined funcations === "
" =============================== "
function! RunCode()
	exec "w"
	set splitbelow
	if &filetype == 'python'
		" :!python3 %
		:sp
		:terminal python3 %
	elseif &filetype == 'html'
		silent! exec "!chromium % &"
	elseif &filetype == 'markdown'
		exec "MarkdownPreview"
	elseif &filetype == 'cpp'
		exec "!g++ % -Wall -o ./bin/%<"
		:sp
		:terminal ./bin/%<
	elseif &filetype == 'c'
		exec "!gcc % -Wall -o ./bin/%<"
		:sp
		:terminal ./bin/%<
	elseif &filetype == 'go'
		:sp
		:terminal go run %
	elseif &filetype == 'java'
		exec "!find . -name '*.java' > temp"
		exec "!javac -d bin/ @temp"
		exec "!rm temp"
		:sp
		:terminal cd ./bin && java Main.Main
	elseif &filetype == 'sh'
		:sp
		:terminal bash %
	endif
endfunction
