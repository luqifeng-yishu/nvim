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

### Install

```linux
git clone https://github.com/rescld-code/nvim.git ~/.config/nvim
mkdir ~/.config/nvim
ln -sf ~/.rescld-nvim/autoload ~/.config/nvim/
ln -sf ~/.rescld-nvim/init.vim ~/.config/nvim/
ln -sf ~/.rescld-nvim/coc-settings.json ~/.config/nvim/
```

---

### Keyboard Shortcuts

| Shortcut      | Action                     |
| :-            | :-                         |
| `<leader>`    | `,`                        |
| `<leader>` n  | NERDTreeToggle             |
| `<leader>` m  | TagbarToggle               |
| `<leader>` sp | Spelling check             |
| `Ctrl` + x    | Modifying word             |
| `Ctrl` + p    | Open FZF                   |
| `<F5>`        | Run code                   |
| `<F4>`        | Create a terminal to right |

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

#### vim-bookmarks

| Shortcut     | Action                                        |
| :-           | :-                                            |
| ma           | Add/remove bookmark at current line           |
| mn           | Jump to next bookmark in buffer               |
| mp           | Jump to previous bookmark in buffer           |
| md           | Clear bookmarks in all buffers                |
| `<leader>` g | Move bookmark at current line to another line |
