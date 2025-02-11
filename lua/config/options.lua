-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Enable line numbers
vim.opt.number = true

-- Enable soft wrapping of long lines
vim.opt.wrap = true

-- Enable undercurl (requires a terminal that supports it)
-- vim.cmd([[let &t_Cs = "\e[4:3m"]])
-- vim.cmd([[let &t_Ce = "\e[4:0m"]])

-- Or can use
vim.opt.termguicolors = true

-- Set encoding to UTF-8 (for proper character display)
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"

-- Enable auto indentation
vim.opt.autoindent = true
vim.opt.smartindent = true

-- Tabs and spaces settings
vim.opt.expandtab = true -- Convert tabs to spaces
-- vim.opt.smarttab = true -- Smart tabbing
vim.opt.shiftwidth = 2 -- Indent size
vim.opt.tabstop = 2 -- Tab width

-- Preserve indentation when wrapping lines
vim.opt.breakindent = true

-- Config diagnostics, but probably don't need since can use <leader>gd
-- vim.diagnostic.config({
--   virtual_text = false,
-- })
--
-- -- Show line diagnostics automatically in hover window
-- vim.o.updatetime = 250
-- vim.cmd([[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]])

-- Highlight search results
vim.opt.hlsearch = true

-- Ignore case in searches unless uppercase is used
vim.opt.ignorecase = true
vim.opt.smartcase = true -- Additional

-- Keep 8 lines visible when scrolling
vim.opt.scrolloff = 8

-- Open new splits below and to the right
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Show partial command in the status bar
vim.opt.showcmd = true

-- Live preview of substitutions (`:s/foo/bar/` shows changes in a split)
vim.opt.inccommand = "split"

-- Set leader key to Space
vim.g.mapleader = " "

-- Allow recursive search in subdirectories
vim.opt.path:append({ "**" })

-- Ignore node_modules in autocomplete
vim.opt.wildignore:append({ "*/node_modules/*" })

-- Disable file backups
vim.opt.backup = false
