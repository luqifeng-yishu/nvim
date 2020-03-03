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

### Keyboard Shortcuts

| Shortcut      | Action                     |
| :-            | :-                         |
| `<leader>`    | `,`                        |
| `<leader>` n  | NERDTreeToggle             |
| `<leader>` m  | TagbarToggle               |
| `<leader>` f  | Open ranger                |
| `<leader>` sp | Spelling check             |
| `Ctrl` + x    | Modifying word             |
| `Ctrl` + p    | Open FZF                   |
| `Ctrl` + s    | Save                       |
| `<F5>`        | Run code                   |
| `<F4>`        | Create a terminal to right |

#### coc.nvim
| Shortcut      | Action                    |
| :-            | :-                        |
| `<leader>` rn | Symbol renaming.          |
| `<leader>` p  | Yank history              |
| gd            | Goto code definition      |
| gt            | Goto code type definition |
| gi            | Goto code implementation  |
| gr            | Goto code references      |

#### split window

| Shortcut | Action                |
| :-       | :-                    |
| su       | Split screen to right |
| si       | Split screen to below |

#### buffers

| Shortcut   | Action              |
| :-         | :-                  |
| `Ctrl` + n | Go one buffer left  |
| `Ctrl` + m | Go one buffer right |

#### remove cursor

| Shortcut   | Action                       |
| :-         | :-                           |
| `Ctrl` + h | Move cursor one window left  |
| `Ctrl` + j | Move cursor one window down  |
| `Ctrl` + k | Move cursor one window up    |
| `Ctrl` + l | Move cursor one window right | 

#### vim-multiple-cursors

| Shortcut   | Action                          |
| :-         | :-                              |
| `Ctrl` + t | Start                           |
| `Ctrl` + n | Create a new cursor to next key |
| `Ctrl` + x | Skip the key                    |

#### Snippet
| Shortcut   | Action                       |
| :-         | :-                           |
| `Tab`      | Expand a snippet             |
| `Ctrl` + l | trigger snippet expand       |
| `Ctrl` + j | jump to next placeholder     |
| `Ctrl` + k | jump to previous placeholder |

#### vim-bookmarks

| Shortcut     | Action                                        |
| :-           | :-                                            |
| ma           | Add/remove bookmark at current line           |
| mn           | Jump to next bookmark in buffer               |
| mp           | Jump to previous bookmark in buffer           |
| md           | Clear bookmarks in all buffers                |
| `<leader>` g | Move bookmark at current line to another line |
