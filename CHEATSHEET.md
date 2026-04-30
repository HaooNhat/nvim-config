# Neovim Cheatsheet

`<leader>` = **Space**. Open this file anytime: `:e ~/.config/nvim/CHEATSHEET.md`

---

## File Navigation

### mini-files (file explorer)

| Key           | Action                                      |
| ------------- | ------------------------------------------- |
| `<leader>e`   | Open explorer at current file               |
| `<leader>E`   | Open explorer at cwd                        |
| `h` / `l`     | Navigate up/into directory                  |
| `<CR>`        | Open file                                   |
| `gs`          | Toggle hidden files                         |
| `a`           | Create file/dir (end name with `/` for dir) |
| `r`           | Rename                                      |
| `d`           | Delete                                      |
| `y`           | Copy                                        |
| `p`           | Paste                                       |
| `q` / `<Esc>` | Close                                       |

> **Tip:** You can rename by just editing the filename in the explorer buffer, then saving with `=`.

### Harpoon2 (bookmark key files)

| Key             | Action                      |
| --------------- | --------------------------- |
| `<leader>ha`    | Add current file to harpoon |
| `<leader>hh`    | Open harpoon quick menu     |
| `<leader>1`–`5` | Jump to harpoon file 1–5    |

> **Tip:** Harpoon is per-project. Bookmark your 4–5 most-edited files (e.g. `schema.prisma`, `app/page.tsx`, `server.ts`) and jump instantly with `<leader>1`, `<leader>2`, etc.

### fzf-lua (fuzzy finder)

| Key  | Action                          |
| ---- | ------------------------------- |
| `;f` | Find files                      |
| `;g` | Live grep across project        |
| `;b` | Open buffers                    |
| `;w` | Grep word under cursor          |
| `;W` | Grep WORD under cursor          |
| `;r` | LSP references                  |
| `;d` | LSP definitions                 |
| `;s` | Document symbols (current file) |
| `;e` | Workspace diagnostics           |
| `;j` | Jump list                       |
| `;m` | Marks                           |
| `;t` | Tabs                            |
| `;a` | Commands                        |
| `;c` | fzf-lua builtins                |

> Inside fzf: `<C-v>` open in vsplit, `<C-x>` open in split, `<C-t>` open in tab, `Tab` multi-select.

---

## Code Navigation (LSP)

| Key          | Action                                          |
| ------------ | ----------------------------------------------- |
| `gd`         | Go to definition                                |
| `gD`         | Go to declaration                               |
| `gr`         | Go to references                                |
| `gI`         | Go to implementation                            |
| `gy`         | Go to type definition                           |
| `K`          | Hover documentation                             |
| `<C-k>`      | Signature help (insert mode)                    |
| `]d` / `[d`  | Next / prev diagnostic                          |
| `]e` / `[e`  | Next / prev error                               |
| `]w` / `[w`  | Next / prev warning                             |
| `<leader>ca` | Code action                                     |
| `<leader>cr` | Rename symbol (inc-rename — shows live preview) |
| `<leader>cf` | Format file                                     |
| `<leader>cd` | Show line diagnostic float                      |
| `<leader>cA` | Source code action                              |

### Aerial — file outline sidebar

| Key          | Action                                   |
| ------------ | ---------------------------------------- |
| `<leader>cs` | Toggle aerial sidebar                    |
| `{` / `}`    | Prev / next symbol (works in any buffer) |
| `[[` / `]]`  | Prev / next symbol (same level)          |
| `<CR>`       | Jump to symbol (inside aerial)           |
| `q`          | Close aerial                             |

> **Tip:** Aerial + `;s` together: aerial for persistent overview while editing, `;s` for quick fuzzy-jump to any symbol.

---

## Search & Replace

### In-buffer

| Key              | Action                                  |
| ---------------- | --------------------------------------- |
| `/`              | Search forward                          |
| `?`              | Search backward                         |
| `n` / `N`        | Next / prev match (auto-centers)        |
| `:%s/old/new/gc` | Replace in file with confirmation       |
| `<leader>sr`     | Search & replace (grug-far, multi-file) |

### grug-far (multi-file search & replace)

| Key          | Action                      |
| ------------ | --------------------------- |
| `<leader>sr` | Open grug-far               |
| `<leader>sR` | Open with word under cursor |

> Inside grug-far: fill in search/replace, then `<leader>r` to apply to all files. Supports regex, file filters (e.g. `*.ts`), and live preview.

### inc-rename

| Key          | Action                                     |
| ------------ | ------------------------------------------ |
| `<leader>cr` | Rename with live preview across all usages |

---

## Editing Power

### Motions (custom)

| Key          | Action                                            |
| ------------ | ------------------------------------------------- |
| `J` (normal) | Join lines, keep cursor position                  |
| `n` / `N`    | Search next/prev, cursor stays centered           |
| `+` / `-`    | Increment / decrement number                      |
| `<C-a>`      | Select all                                        |
| `<leader>o`  | New line below (no comment continuation)          |
| `<leader>O`  | New line above (no comment continuation)          |
| `x`          | Delete char to black hole (no register pollution) |

### mini-surround

| Key                   | Action                                             |
| --------------------- | -------------------------------------------------- |
| `gsa` + motion + char | Add surrounding (e.g. `gsaiw"` → wrap word in `"`) |
| `gsd` + char          | Delete surrounding                                 |
| `gsr` + old + new     | Replace surrounding                                |
| `gsf`                 | Find surrounding (forward)                         |
| `gsF`                 | Find surrounding (backward)                        |

### yanky (better yank/paste)

| Key         | Action                                   |
| ----------- | ---------------------------------------- |
| `p` / `P`   | Paste (enhanced)                         |
| `<C-p>`     | Cycle through yank history (after paste) |
| `<C-n>`     | Cycle yank history forward               |
| `<leader>p` | Open yank ring picker                    |

### dial (increment/decrement anything)

| Key | Action                                     |
| --- | ------------------------------------------ |
| `+` | Increment (numbers, booleans, dates, etc.) |
| `-` | Decrement                                  |

> Works on `true`/`false`, `yes`/`no`, dates, hex colors, and more.

### neogen (docstring generation)

| Key          | Action                                             |
| ------------ | -------------------------------------------------- |
| `<leader>cc` | Generate docstring for function/class under cursor |

---

## Windows & Splits

| Key                      | Action                          |
| ------------------------ | ------------------------------- |
| `ss`                     | Split horizontal                |
| `sv`                     | Split vertical                  |
| `<C-h/j/k/l>`            | Navigate between splits         |
| `<C-Up/Down/Left/Right>` | Resize splits                   |
| `<leader>wd`             | Delete window                   |
| `<leader>wm`             | Maximize/restore window         |
| `te`                     | New tab (`:tabedit <filename>`) |
| `tw`                     | Close tab                       |
| `<Tab>` / `<S-Tab>`      | Next / prev tab                 |

---

## Git

> LazyGit is built into snacks — no extra plugin needed.

| Key           | Action                       |
| ------------- | ---------------------------- |
| `<leader>gg`  | Open LazyGit (project root)  |
| `<leader>gG`  | Open LazyGit (cwd)           |
| `<leader>gb`  | Git blame current line       |
| `<leader>gB`  | Git browse (open in browser) |
| `<leader>gd`  | Diff this file               |
| `<leader>gs`  | Snacks git status            |
| `]h` / `[h`   | Next / prev hunk             |
| `<leader>ghs` | Stage hunk                   |
| `<leader>ghr` | Reset hunk                   |
| `<leader>ghp` | Preview hunk                 |
| `<leader>ghb` | Blame line (full)            |

> Inside LazyGit: `?` shows all keymaps. `s` stage, `c` commit, `P` push, `p` pull, `b` branches.

---

## Testing (neotest)

| Key          | Action                    |
| ------------ | ------------------------- |
| `<leader>tt` | Run nearest test          |
| `<leader>tT` | Run all tests in file     |
| `<leader>tr` | Toggle test results panel |
| `<leader>ts` | Stop test run             |
| `<leader>tS` | Toggle test summary       |
| `<leader>to` | Show test output          |
| `<leader>tO` | Toggle test output panel  |
| `<leader>tw` | Toggle test watch mode    |

> **Turborepo tip:** The Jest adapter auto-detects the correct `jest.config.ts` per package. Works for both Jest and Vitest projects.

---

## Debugging (nvim-dap)

| Key          | Action                     |
| ------------ | -------------------------- |
| `<leader>db` | Toggle breakpoint          |
| `<leader>dB` | Breakpoint with condition  |
| `<leader>dc` | Continue / start debugging |
| `<leader>dC` | Run to cursor              |
| `<leader>di` | Step into                  |
| `<leader>do` | Step out                   |
| `<leader>dO` | Step over                  |
| `<leader>dp` | Pause                      |
| `<leader>dr` | Toggle REPL                |
| `<leader>ds` | Session picker             |
| `<leader>dt` | Terminate                  |
| `<leader>dU` | Toggle DAP UI              |

**Launch profiles** (select on `<leader>dc`):

- `Launch file` — run current TS/JS file
- `Attach to process` — pick a running Node process
- `NestJS (ts-node)` — launch `src/main.ts` via ts-node
- `Next.js (attach)` — attach to `NODE_OPTIONS='--inspect' next dev` on port 9229

---

## Database (vim-dadbod)

| Key          | Action               |
| ------------ | -------------------- |
| `<leader>dE` | Toggle DB UI sidebar |
| `<leader>dA` | Add new connection   |
| `<leader>df` | Find DB buffer       |

**Connection string examples:**

```
postgresql://user:password@localhost:5432/mydb
redis://localhost:6379
sqlite:./dev.db
```

> Inside a query buffer: `<leader>W` executes the query, results appear in a split.
> SQL autocomplete works via blink.cmp in `.sql` and dadbod query buffers.

---

## REST API Testing (kulala)

Create any `.http` file:

```http
# Get all users
GET http://localhost:3000/api/users
Authorization: Bearer {{TOKEN}}

###

# Login
POST http://localhost:3000/api/auth/login
Content-Type: application/json

{
  "email": "user@example.com",
  "password": "secret"
}
```

| Key                 | Action                       |
| ------------------- | ---------------------------- |
| `<leader>Rr`        | Run request under cursor     |
| `<leader>Ra`        | Run all requests in file     |
| `<leader>Rn` / `Rp` | Next / prev request          |
| `<leader>Rt`        | Toggle headers view          |
| `<leader>Rc`        | Copy request as cURL command |

> Use `{{VARIABLE}}` for environment variables. Create a `.env` file in the project root or a `kulala.env.json` for per-env values.

---

## Focus & Zen Mode

| Key          | Action                                         |
| ------------ | ---------------------------------------------- |
| `<leader>uz` | Toggle Zen Mode (distraction-free full-screen) |
| `<leader>uZ` | Toggle Twilight (dim inactive code)            |

> **Zen Mode** hides UI chrome (statusline, tabline, numbers) and centers the buffer. Great for reviewing PRs or writing documentation.
> **Twilight** dims everything outside the current function/block — helps focus on one piece of logic at a time.

---

## Session Management (persistence)

| Key          | Action                                 |
| ------------ | -------------------------------------- |
| `<leader>qs` | Restore session for this directory     |
| `<leader>ql` | Restore last session                   |
| `<leader>qd` | Don't save session on exit (this time) |

> Sessions are saved per-directory automatically on exit. Next time you open Neovim in a project folder, run `<leader>qs` to restore all your splits, tabs, and buffers exactly as you left them.

---

## Diagnostics & Trouble

| Key          | Action                          |
| ------------ | ------------------------------- |
| `<leader>xx` | Workspace diagnostics (Trouble) |
| `<leader>xX` | Buffer diagnostics (Trouble)    |
| `<leader>xL` | Location list                   |
| `<leader>xQ` | Quickfix list                   |
| `<leader>cs` | Symbols (aerial)                |
| `<leader>cd` | Line diagnostic float           |
| `]d` / `[d`  | Next / prev diagnostic          |

---

## Neovim Power Tips

### Text objects (use with `d`, `c`, `y`, `v`)

```
iw / aw   — inner / around word
is / as   — inner / around sentence
ip / ap   — inner / around paragraph
i" / a"   — inner / around double quotes
i( / a(   — inner / around parens
i{ / a{   — inner / around braces
it / at   — inner / around HTML tag
if / af   — inner / around function (treesitter)
ic / ac   — inner / around class (treesitter)
```

### Macros

```
qa        — start recording macro into register 'a'
q         — stop recording
@a        — play macro 'a'
@@        — replay last macro
10@a      — run macro 'a' 10 times
```

### Marks

```
ma        — set mark 'a' (lowercase = file-local)
mA        — set mark 'A' (uppercase = global, across files)
`a        — jump to mark 'a' (exact position)
'a        — jump to mark 'a' (start of line)
:marks    — list all marks
`;m`      — open marks in fzf
```

### Registers

```
"ayy      — yank line into register 'a'
"ap       — paste from register 'a'
"+y       — yank to system clipboard
"+p       — paste from system clipboard
:reg      — view all registers
```

### Folds (with nvim-ufo if installed, else built-in)

```
za        — toggle fold under cursor
zo / zc   — open / close fold
zR        — open all folds
zM        — close all folds
zj / zk   — jump to next / prev fold
```

### Command-line tricks

```
:!<cmd>   — run shell command
:r !<cmd> — insert shell command output into buffer
:w !pbcopy — pipe buffer to clipboard (macOS)
:%!jq .   — pipe buffer through jq (format JSON in place)
:cdo s/old/new/g  — run substitution on every quickfix entry
```

### Useful built-ins

```
<C-o>     — jump back in jump list
<C-i>     — jump forward in jump list
gi        — go to last insert position
gv        — reselect last visual selection
.         — repeat last change
~         — toggle case of char under cursor
g~iw      — toggle case of word
gUiw      — uppercase word
guiw      — lowercase word
>>  /  << — indent / dedent line
>%        — indent block to matching bracket
```

### Window tips

```
<C-w>T    — move current split to its own tab
<C-w>=    — equalize all split sizes
<C-w>_    — maximize split height
<C-w>|    — maximize split width
:only     — close all other splits
```

### Quick substitution tricks

```
*         — search for word under cursor
cgn       — change next search match (then press . to repeat for each)
```

> **The `.` + `cgn` combo** is the fastest way to rename things without a LSP: search with `*`, change first match with `cgn`, then keep pressing `.` to change each next occurrence.

---

## Plugin Management (lazy.nvim)

| Key / Command          | Action                            |
| ---------------------- | --------------------------------- |
| `<leader>l`            | Open lazy.nvim UI                 |
| `U` (inside lazy)      | Update all plugins                |
| `x` (inside lazy)      | Delete plugin                     |
| `:Lazy sync`           | Install + update + clean          |
| `:Lazy profile`        | Show startup time breakdown       |
| `:Mason`               | Open Mason (LSP/tool installer)   |
| `:MasonInstall <name>` | Install a tool                    |
| `:LazyExtras`          | Browse LazyVim extras you can add |

---

## LSP & Treesitter

```
:LspInfo          — show active LSP servers for current buffer
:LspRestart       — restart LSP servers
:TSInstall <lang> — install treesitter parser
:TSUpdate         — update all parsers
:InspectTree      — show treesitter parse tree (great for debugging)
:checkhealth      — diagnose Neovim + plugin health
```
