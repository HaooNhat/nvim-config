return {
  {
    "ibhagwan/fzf-lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
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
      {
        ";w",
        function()
          require("fzf-lua").grep_cword()
        end,
        desc = "Grep current word",
      },
      {
        ";W",
        function()
          require("fzf-lua").grep_cWORD()
        end,
        desc = "Grep current WORD",
      },
      {
        ";a",
        function()
          require("fzf-lua").commands()
        end,
        desc = "Find commands",
      },
      {
        ";c",
        function()
          require("fzf-lua").builtin()
        end,
        desc = "fzf-lua builtins",
      },
      {
        ";s",
        function()
          require("fzf-lua").lsp_document_symbols()
        end,
        desc = "Find current file symbols",
      },
      {
        ";j",
        function()
          require("fzf-lua").jumps()
        end,
        desc = "Open jump list",
      },
      {
        ";m",
        function()
          require("fzf-lua").marks()
        end,
        desc = "Open mark list",
      },
      {
        ";t",
        function()
          require("fzf-lua").tabs()
        end,
        desc = "Open tab list",
      },
    },
    opts = {
      winopts = {
        border = "rounded",
        preview = {
          border = "rounded",

          -- Switch the preview to the left and file search to the right
          horizontal = "left:60%",
        },
      },
      fzf_opts = {
        ["--layout"] = "reverse-list", -- Change the layout to reverse-list (search bottom, result defaults)
        ["--border"] = "rounded",
      },
    },
  },
}
