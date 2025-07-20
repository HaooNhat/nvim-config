return {
  -- Highlight colors
  {
    "echasnovski/mini.hipatterns",
    event = "BufReadPre",
    opts = {},
  },
  -- {
  --   "ibhagwan/fzf-lua",
  --   dependencies = { "nvim-tree/nvim-web-devicons" },
  --   priority = 1000,
  --   lazy = false,
  --   keys = {
  --     {
  --       ";f",
  --       function()
  --         require("fzf-lua").files()
  --       end,
  --       desc = "Find files",
  --     },
  --     {
  --       ";b",
  --       function()
  --         require("fzf-lua").buffers()
  --       end,
  --       desc = "Find buffers",
  --     },
  --     {
  --       ";g",
  --       function()
  --         require("fzf-lua").live_grep()
  --       end,
  --       desc = "Live grep",
  --     },
  --     {
  --       ";e",
  --       function()
  --         require("fzf-lua").diagnostics_workspace()
  --       end,
  --       desc = "Open diagnostic for workspace",
  --     },
  --     {
  --       ";r",
  --       function()
  --         require("fzf-lua").lsp_references()
  --       end,
  --       desc = "Find references",
  --     },
  --     {
  --       ";d",
  --       function()
  --         require("fzf-lua").lsp_definitions()
  --       end,
  --       desc = "Find definitions",
  --     },
  --     {
  --       ";w",
  --       function()
  --         require("fzf-lua").grep_cword()
  --       end,
  --       desc = "Grep current word",
  --     },
  --     {
  --       ";W",
  --       function()
  --         require("fzf-lua").grep_cWORD()
  --       end,
  --       desc = "Grep current WORD",
  --     },
  --     {
  --       ";a",
  --       function()
  --         require("fzf-lua").commands()
  --       end,
  --       desc = "Find location list",
  --     },
  --     {
  --       ";c",
  --       function()
  --         require("fzf-lua").builtin()
  --       end,
  --       desc = "Find location list",
  --     },
  --     {
  --       ";s",
  --       function()
  --         require("fzf-lua").lsp_document_symbols()
  --       end,
  --       desc = "Find current file symbols",
  --     },
  --     {
  --       ";j",
  --       function()
  --         require("fzf-lua").jumps()
  --       end,
  --       desc = "Open jump list",
  --     },
  --     {
  --       ";m",
  --       function()
  --         require("fzf-lua").marks()
  --       end,
  --       desc = "Open mark list",
  --     },
  --     {
  --       ";t",
  --       function()
  --         require("fzf-lua").tabs()
  --       end,
  --       desc = "Open tab list",
  --     },
  --   },
  --   opts = {
  --     winopts = {
  --       preview = {
  --         -- Switch the preview to the left and file search to the right
  --         horizontal = "left:60%",
  --       },
  --     },
  --     fzf_opts = {
  --       ["--layout"] = "reverse-list", -- Change the layout to reverse-list (search bottom, result defaults)
  --     },
  --   },
  -- },
  {
    "folke/snacks.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    priority = 1000,
    lazy = false,
    keys = {
      {
        ";f",
        function()
          require("snacks").picker.files()
        end,
        desc = "Find files",
      },
      {
        ";b",
        function()
          require("snacks").picker.buffers()
        end,
        desc = "Find buffers",
      },
      {
        ";g",
        function()
          require("snacks").picker.grep()
        end,
        desc = "Live grep",
      },
      {
        ";e",
        function()
          require("snacks").picker.diagnostics_buffer()
        end,
        desc = "Open diagnostic for workspace",
      },
      {
        ";r",
        function()
          require("snacks").picker.lsp_references()
        end,
        desc = "Find references",
      },
      {
        ";d",
        function()
          require("snacks").picker.lsp_definitions()
        end,
        desc = "Find definitions",
      },
      -- {
      --   ";w",
      --   function()
      --     require("fzf-lua").grep_cword()
      --     require("snacks").picker.lsp_definitions()
      --   end,
      --   desc = "Grep current word",
      -- },
      -- {
      --   ";W",
      --   function()
      --     require("fzf-lua").grep_cWORD()
      --     require("snacks").picker.lsp_definitions()
      --   end,
      --   desc = "Grep current WORD",
      -- },
      {
        ";a",
        function()
          require("snacks").picker.commands()
        end,
        desc = "Find location list",
      },
      -- {
      --   ";c",
      --   function()
      --     require("fzf-lua").builtin()
      --     require("snacks").picker.lsp_definitions()
      --   end,
      --   desc = "Find location list",
      -- },
      {
        ";s",
        function()
          -- require("fzf-lua").lsp_document_symbols()
          require("snacks").picker.lsp_symbols()
        end,
        desc = "Find current file symbols",
      },
      {
        ";j",
        function()
          require("snacks").picker.jumps()
        end,
        desc = "Open jump list",
      },
      {
        ";m",
        function()
          require("snacks").picker.marks()
        end,
        desc = "Open mark list",
      },
      -- {
      --   ";t",
      --   function()
      --     -- require("fzf-lua").tabs()
      --     require("snacks").picker.tabs()
      --   end,
      --   desc = "Open tab list",
      -- },
    },
    opts = {
      picker = {
        layout = {
          preset = "telescope",
        },
        layouts = {
          telescope = {
            reverse = true,
          },
        },
      },
    },
  },
}
