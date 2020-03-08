# rescld.neovim

### Required Env

- neovim >= 4.0
- python
	- `pip3 install pynvim`
- node.js
	- `curl -sL install-node.now.sh/lts | bash`
- yarn
- xsel
- ctags

---

### Language Server
- Python
	- `pip3 install python-language-server`
- C/C++
	- [ccls](https://github.com/MaskRay/ccls)
- Java
	- [jdt.ls](https://github.com/eclipse/eclipse.jdt.ls)

---

### Install

```linux
git clone https://github.com/rescld-code/nvim.git ~/.rescld-nvim
cd ~/.rescld-nvim
./install.sh
```

---

### Plugin List

- editor enhancement
	- [vim-edit](https://github.com/chxuan/vim-edit)
	- [tabular](https://github.com/godlygeek/tabular)
	- [surround](https://github.com/tpope/vim-surround)
	- [wildfire.vim](https://github.com/gcmt/wildfire.vim)
	- [auto-pairs](https://github.com/jiangmiao/auto-pairs)
	- [clever-f.vim](https://github.com/rhysd/clever-f.vim)
	- [vim-bookmarks](https://github.com/MattesGroeger/vim-bookmarks)
	- [vim-multiple-cursors](https://github.com/terryma/vim-multiple-cursors)
- visual enhancement
	- [rainbow](https://github.com/luochen1990/rainbow)
	- [vim-startify](https://github.com/mhinz/vim-startify)
	- [vim-peekaboo](https://github.com/junegunn/vim-peekaboo)
	- [vim-devicons](https://github.com/ryanoasis/vim-devicons)
	- [vim-commentary](https://github.com/tpope/vim-commentary)
	- [vim-cursorword](https://github.com/itchyny/vim-cursorword)
- taglist
	- [vista.vim](https://github.com/liuchengxu/vista.vim)
- find
	- [far.vim](https://github.com/brooth/far.vim)
- repl
	- [repl](https://github.com/rhysd/reply.vim)
- indent
	- [indentLine](https://github.com/Yggdroot/indentLine)
	- [vim-indent-guides](https://github.com/nine2/vim-indent-guides)
- ranger
	- [ranger](https://github.com/francoiscabrol/ranger.vim)
	- [bclose.vim](https://github.com/rbgrouleff/bclose.vim)
- airline
	- [vim-airline](https://github.com/vim-airline/vim-airline)
	- [vim-airline-themes](https://github.com/vim-airline/vim-airline-themes)
- markdown
	- [bullets.vim](https://github.com/theniceboy/bullets.vim)
	- [vim-table-mode](https://github.com/dhruvasagar/vim-table-mode)
	- [markdown-preview.nvim](https://github.com/iamcco/markdown-preview.nvim')
- git
	- [gv.vim](https://github.com/junegunn/gv.vim)
	- [vim-fugitive](https://github.com/tpope/vim-fugitive)
	- [vim-gitgutter](https://github.com/airblade/vim-gitgutter)
- Snippets
	- [vim-snippets](https://github.com/honza/vim-snippets)
- coc
	- [coc.nvim](https://github.com/neoclide/coc.nvim')
- python
	- [semshi](https://github.com/numirias/semshi')
	- [SimpylFold](https://github.com/tmhedberg/SimpylFold)
	- [braceless.vim](https://github.com/tweekmonster/braceless.vim)
	- [vim-virtualenv](https://github.com/plytophogy/vim-virtualenv')
	- [indentpython.vim](https://github.com/vim-scripts/indentpython.vim')
	- [vim-python-pep8-indent](https://github.com/Vimjas/vim-python-pep8-indent')
- cpp
	- [vim-cpp-enhanced-highlight](https://github.com/octol/vim-cpp-enhanced-highlight)
- HTML, CSS, JavaScript, JSON, etc.
	- [vim-js](https://github.com/yuezk/vim-js)
	- [vim-json](https://github.com/elzr/vim-json)
	- [vim-coloresque](https://github.com/gko/vim-coloresque')
	- [vim-css3-syntax](https://github.com/hail2u/vim-css3-syntax)
	- [vim-javascript](https://github.com/pangloss/vim-javascript')
	- [vim-jsx-pretty](https://github.com/MaxMEllon/vim-jsx-pretty)
	- [vim-javascript-syntax](https://github.com/jelera/vim-javascript-syntax)
- colorscheme
	- [oceanic-next](https://github.com/mhartington/oceanic-next)
	- [space-vim-dark](https://github.com/liuchengxu/space-vim-dark)
- undo tree
	- [undotree](https://github.com/mbbill/undotree)
- NERDTree
	- [nerdtree](https://github.com/scrooloose/nerdtree')
	- [nerdtree-git-plugin](https://github.com/Xuyuanp/nerdtree-git-plugin)
- fzf
	- [fzf](https://github.com/junegunn/fzf)
	- [fzf.vim](https://github.com/junegunn/fzf.vim)

---

### Keyboard Shortcuts

| Shortcut        | Action                          |
| --------------- | ----------------------------    |
| `<leader>`      | `,`                             |
| `<leader>` n    | NERDTree Toggle                 |
| `<leader>` m    | Tagbar Toggle                   |
| `<leader>` f    | Open ranger                     |
| `<leader>` [    | Quickly select the closest text |
| `<leader>` sp   | Spelling check                  |
| `<leader>` tm   | Table mode toggle               |
| `Ctrl` + x      | Modifying word                  |
| `Ctrl` + p      | Open FZF                        |
| `Ctrl` + s      | Save                            |
| `Alt` + u       | Go to the top of the line       |
| `Alt` + i       | Go to the end of the line       |
| `<F5>`          | Run code                        |
| `<F4>`          | Create a terminal to right      |
| L               | Open undoTree                   |

#### Coc.nvim
| Shortcut      | Action           |
|---------------|------------------|
| `<leader>` p  | Yank history     |
| `<leader>` rn | Symbol renaming. |

##### coc-calc
| Shortcut      | Action                      |
|---------------|-----------------------------|
| `<leader>` ca | Calculate result to append  |
| `<leader>` cr | Calculate result to replace |

##### Goto code
| Shortcut | Action                    |
|----------|---------------------------|
| gd       | Goto code definition      |
| gt       | Goto code type definition |
| gi       | Goto code implementation  |
| gr       | Goto code references      |

##### coc-translator
| Shortcut | Action             |
| :-       | :-                 |
| ts       | Translator popup   |
| te       | Translator echo    |
| tr       | Translator replace |
| th       | Translator history |

##### Snippet
| Shortcut      | Action                   |
|---------------|--------------------------|
| `Tab`         | Expand a snippet         |
| `Ctrl` + l    | trigger snippet expand   |
| `Ctrl` + j    | jump to next placeholder |

##### format
| Shortcut     | Action                   |
|--------------|--------------------------|
| `<leader>` z | Formatting selected code |
| `<leader>` Z | Formatting file code     |

#### Repl
| Shortcut | Action     |
|----------|------------|
| `F10`    | Repl begin |
| `F11`    | Send code  |
| `F12`    | Repl end   |

#### Tabular
| Shortcut     | Action               |
|--------------|----------------------|
| `<leader>` l | Aligns table         |
| `<leader>` = | Aligns text with '=' |

#### split window

| Shortcut | Action                |
|----------|-----------------------|
| su       | Split screen to right |
| si       | Split screen to below |

#### buffers

| Shortcut      | Action              |
|---------------|---------------------|
| `Ctrl` + n    | Go one buffer left  |
| `Ctrl` + m    | Go one buffer right |
| `<leader>` bd | Delete the buffer   |

#### remove cursor

| Shortcut   | Action                       |
|------------|------------------------------|
| `Ctrl` + h | Move cursor one window left  |
| `Ctrl` + j | Move cursor one window down  |
| `Ctrl` + k | Move cursor one window up    |
| `Ctrl` + l | Move cursor one window right |

#### vim-multiple-cursors

| Shortcut   | Action                          |
|------------|---------------------------------|
| `Ctrl` + t | Start                           |
| `Ctrl` + n | Create a new cursor to next key |
| `Ctrl` + x | Skip the key                    |

#### vim-bookmarks

| Shortcut     | Action                                        |
|--------------|-----------------------------------------------|
| ma           | Add/remove bookmark at current line           |
| mn           | Jump to next bookmark in buffer               |
| mp           | Jump to previous bookmark in buffer           |
| md           | Clear bookmarks in all buffers                |
| `<leader>` g | Move bookmark at current line to another line |
