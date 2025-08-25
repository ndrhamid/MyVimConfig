# 📝 Vim Cheat Sheet

---

## Command / Normal Mode

| Command             | Description                                                                 |
|---------------------|-----------------------------------------------------------------------------|
| `i`                 | Insert mode                                                                 |
| `x`, `X`            | Delete one character (`X` deletes backward)                                 |
| `o`, `O`            | Open a new line below / above                                               |
| `J`                 | Join current line with the next (use count: `5J`)                           |
| `r`                 | Replace one character                                                       |
| `a` / `A`           | Append after cursor / at end of line                                        |
| `u`                 | Undo                                                                        |
| `d`                 | Delete (`dw`, `dd`, `d` + count, etc.)                                      |
| `g`                 | Go to first line                                                            |
| `G`                 | Go to line number (`10G`, `1G`), last line with just `G`                    |
| `y`                 | Yank / Copy (`yy`, `yw`, etc.)                                              |
| `p`, `P`            | Paste after / before cursor                                                 |
| `/X`                | Search for X, then `n` (next) / `N` (previous)                              |
| `^`, `              | Beginning / end of line (`$d` deletes to end)                               |
| `.`                 | Repeat last command                                                         |
| `%`                 | Jump to matching `()`, `{}` or `[]`                                         |
| `za`                | Toggle folding                                                              |
| `:set`              | Set local variable                                                          |
| `:Explore`          | File manager                                                                |
| `:Vexplore`         | Vertical file manager                                                       |
| `:Sexplore`         | Split file manager                                                          |
| `:Vsplit`           | Vertical split                                                              |
| `ctrl+w`            | Switch between windows                                                      |
| `ctrl+t`            | Floaterm Toggle                                                             |
| `:!`                | Run shell command                                                           |
| `:.!`               | Run shell command and insert output into file                               |
| `:%s/X/Y`           | Replace X with Y in entire file (`g` = all in each line)                    |
| `:5,15s/X/Y`        | Replace X with Y from lines 5 to 15                                         |
| `:%y+`              | Copy entire file to clipboard                                               |
| `:5,15y+`           | Copy lines 5 to 15 to clipboard                                             |
| `m<letter>`         | ma   " Sets mark 'a' at the current cursor position                         |
| `'<letter>`         | 'a   Jump to the beginning of the line of the mark                          |
| `:marks`            | List marks                                                                  |
| `:delmarks<letter>` | Delete a specific mark                                                      |
| `:delmarks!`        | Delete all marks                                                            |
| `>>`                | Indent single line                                                          |
| `<<`                | Unindent single line                                                        |

---

## NERDTree Commands

| Command | Description                  |
|---------|------------------------------|
| `o`     | Open in new buffer           |
| `gt`    | Go to next window            |
| `gT`    | Go to previous window        |

---

## Visual Mode

| Command  | Description                         |
|----------|-------------------------------------|
| `v`      | Enter visual mode                   |
| `y`      | Yank multiple lines                 |
| `>`      | Indent multiple lines               |
| `<`      | Unindent multiple lines             |
| `it`     | Select inner tag                    |
| `at`     | Select outer tag                    |
| `:sort`  | Sort selected lines alphabetically  |

---

## 🛠 TODO
- Complete **buffer** commands section
- Add **insert mode** tricks
- Add window and tab management cheats
