return { -- Hihglight colors
  {
    "echasnovski/mini.hipatterns",
    event = "BufReadPre",
    opts = {},
  },
  {
    "nvim-telescope/telescope.nvim",
    priority = 1000,
    dependencies = {
      "nvim-lua/plenary.nvim",
      {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "make",
      },
      "nvim-telescope/telescope-file-browser.nvim",
    },
    keys = {
      {
        ";f",
        function()
          require("telescope.builtin").find_files({ hidden = true })
        end,
        desc = "Find files (respects .gitignore)",
      },
      {
        ";r",
        function()
          require("telescope.builtin").live_grep()
        end,
        desc = "Live grep",
      },
      {
        "\\\\",
        function()
          require("telescope.builtin").buffers()
        end,
        desc = "List open buffers",
      },
      {
        ";;",
        function()
          require("telescope.builtin").resume()
        end,
        desc = "Resume previous picker",
      },
      {
        ";e",
        function()
          require("telescope.builtin").diagnostics()
        end,
        desc = "List diagnostics",
      },
      {
        ";s",
        function()
          require("telescope.builtin").treesitter()
        end,
        desc = "List symbols from Treesitter",
      },
      {
        "sf",
        function()
          local fb = require("telescope").extensions.file_browser
          fb.file_browser({
            cwd = vim.fn.expand("%:p:h"),
            hidden = true,
            grouped = true,
            previewer = true,
            initial_mode = "normal",
            layout_strategy = "horizontal",
            layout_config = { height = 0.7, preview_cutoff = 120, width = 0.8 },
          })
        end,
        desc = "Open file browser in buffer's directory",
      },
    },
    config = function(_, opts)
      require("telescope").setup({
        defaults = {
          wrap_results = true,
          layout_strategy = "horizontal",
          layout_config = { prompt_position = "bottom" },
          sorting_strategy = "descending",
        },
        pickers = {
          diagnostics = { theme = "ivy", initial_mode = "normal" },
        },
        extensions = {
          file_browser = {
            theme = "ivy",
            hijack_netrw = true,
          },
        },
      })
      require("telescope").load_extension("fzf")
      require("telescope").load_extension("file_browser")
    end,
  },
}
