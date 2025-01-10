return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate", -- Automatically update parsers
  event = { "BufReadPost", "BufNewFile" },
  enabled = true,
  opts = {
    auto_install = true,
    highlight = {
      enable = true, -- Enable syntax highlighting
      additional_vim_regex_highlighting = false,
    },
    indent = {
      enable = true, -- Enable indentation based on Tree-sitter
    },
    incremental_selection = {
      enable = true,
      keymaps = {
        init_selection = "gnn",
        node_incremental = "grn",
        scope_incremental = "grc",
        node_decremental = "grm",
      },
    },
  },
  config = function(_, opts)
    require("nvim-treesitter.configs").setup(opts)
  end,
}

