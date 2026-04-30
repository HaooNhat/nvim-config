-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Only add options here that override or extend LazyVim defaults.

-- Soft-wrap long lines (LazyVim default is nowrap)
vim.opt.wrap = true

-- Keep 8 lines visible when scrolling (LazyVim default is 4)
vim.opt.scrolloff = 8

-- Live preview of substitutions in a split (LazyVim default is "nosplit")
vim.opt.inccommand = "split"

-- Preserve indentation when wrapping lines
vim.opt.breakindent = true

-- Disable file backups
vim.opt.backup = false

-- Ignore node_modules in wildmenu completions
vim.opt.wildignore:append({ "*/node_modules/*" })

-- .env file filetype detection (uses bash highlighting as closest match)
vim.filetype.add({
  filename = {
    [".env"] = "bash",
    [".env.local"] = "bash",
    [".env.development"] = "bash",
    [".env.production"] = "bash",
    [".env.test"] = "bash",
    [".env.example"] = "bash",
  },
  pattern = {
    ["%.env%..+"] = "bash", -- matches .env.anything
  },
})
