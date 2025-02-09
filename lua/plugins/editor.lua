return {
  -- Highlight colors
  {
    "echasnovski/mini.hipatterns",
    event = "BufReadPre",
    opts = {},
  },
  {
    "ibhagwan/fzf-lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    priority = 1000,
    keys = {
      {
        ";f",
        function()
          require("fzf-lua").files()
        end,
        desc = "Find files",
      },
      {
        ";b",
        function()
          require("fzf-lua").buffers()
        end,
        desc = "Find buffers",
      },
      {
        ";g",
        function()
          require("fzf-lua").live_grep()
        end,
        desc = "Live grep",
      },
      {
        ";e",
        function()
          require("fzf-lua").diagnostics_workspace()
        end,
        desc = "Open diagnostic for workspace",
      },
      {
        ";r",
        function()
          require("fzf-lua").lsp_references()
        end,
        desc = "Find references",
      },
      {
        ";d",
        function()
          require("fzf-lua").lsp_definitions()
        end,
        desc = "Find definitions",
      },
    },
    opts = {
      winopts = {
        preview = {
          -- Switch the preview to the left and file search to the right
          horizontal = "left:60%",
        },
      },
      fzf_opts = {
        ["--layout"] = "reverse-list", -- Change the layout to reverse-list (search bottom, result defaults)
      },
    },
  },
}
