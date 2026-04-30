-- Database UI for PostgreSQL, Redis, SQLite, etc.
-- Toggle the explorer with <leader>db, add connections with <leader>dA.
-- Connection string examples:
--   postgresql://user:pass@localhost:5432/mydb
--   redis://localhost:6379
return {
  { "tpope/vim-dadbod", lazy = true },
  {
    "kristijanhusak/vim-dadbod-completion",
    lazy = true,
    dependencies = { "tpope/vim-dadbod" },
  },
  {
    "kristijanhusak/vim-dadbod-ui",
    dependencies = {
      "tpope/vim-dadbod",
      "kristijanhusak/vim-dadbod-completion",
    },
    cmd = { "DBUI", "DBUIToggle", "DBUIAddConnection", "DBUIFindBuffer" },
    keys = {
      { "<leader>dE", "<cmd>DBUIToggle<cr>", desc = "Toggle DB UI" },
      { "<leader>dA", "<cmd>DBUIAddConnection<cr>", desc = "Add DB connection" },
      { "<leader>df", "<cmd>DBUIFindBuffer<cr>", desc = "Find DB buffer" },
    },
    init = function()
      vim.g.db_ui_use_nerd_fonts = 1
      vim.g.db_ui_save_location = vim.fn.stdpath("data") .. "/db_ui"
      vim.g.db_ui_show_database_icon = 1
      vim.g.db_ui_force_echo_notifications = 1
    end,
  },
  -- Wire dadbod-completion into blink.cmp for SQL autocomplete in query buffers
  {
    "saghen/blink.cmp",
    opts = {
      sources = {
        default = { "lsp", "path", "snippets", "buffer", "dadbod" },
        providers = {
          dadbod = {
            name = "Dadbod",
            module = "vim_dadbod_completion.blink",
            score_offset = 85,
          },
        },
      },
    },
  },
}
