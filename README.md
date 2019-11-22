# rescld.neovim

### Required Env

- pynvim
	- `pip3 install pynvim`
- node.js
	- `curl -sL install-node.now.sh/lts | bash`
- ctags

---

### Install

```linux
git clone https://github.com/rescld-code/nvim.git ~/.config/nvim
```

---

### Keyboard Shortcuts

| Shortcut        | Action                   |
| :-              | :-                       |
| `<leader>`      | `,`                      |
| `<leader>` + n  | NERDTreeToggle           |
| `<leader>` + m  | TagbarToggle             |
| `<leader>` + sp | Spelling check           |
| `Ctrl` + x      | Modifying word           |
| `<F5>`          | Run code                 |
| `<F4>`          | Create a termal to right |

#### split window

| Shortcut | Action                |
| :-       | :-                    |
| su       | Split screen to right |
| si       | Split screen to below |

#### tabe

| Shortcut | Action           |
| :-       | :-               |
| eu       | Create a new tab |
| eh       | Go one tab left  |
| el       | Go one tab right |

#### remove cursor

| Shortcut   | Action                       |
| :-         | :-                           |
| `Ctrl` + h | Move cursor one window left  |
| `Ctrl` + j | Move cursor one window down  |
| `Ctrl` + k | Move cursor one window up    |
| `Ctrl` + l | Move cursor one window right |

#### buffer

| Shortcut   | Action         |
| :-         | :-             |
| `Ctrl` + n | NextBuffer     |
| `Ctrl` + m | PreviousBuffer |

#### vim-multiple-cursors

| Shortcut   | Action                          |
| :-         | :-                              |
| `Ctrl` + t | Start                           |
| `Ctrl` + n | Create a new cursor to next key |
| `Ctrl` + x | Skip the key                    |
