require("config.lazy")
require("HaooNhat.remap")

vim.cmd("set number")
vim.cmd("set relativenumber")

vim.keymap.set("n", "<C_d>", "<C_d>zz")
vim.keymap.set("n", "<C_u>", "<C_u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
