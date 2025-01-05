return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    enabled = true,
-- or                              , branch = '0.1.x',
    dependencies = { 'nvim-lua/plenary.nvim', config=function()
      local builtin = require("telescope.builtin")
      vim.g.mapleader = " "
      vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
      vim.keymap.set('n', '<C-p>', builtin.git_files, {})
      vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
    end}
}
