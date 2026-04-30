-- Node.js / TypeScript debugger via vscode-js-debug
-- Mason will auto-install the `js-debug-adapter` adapter.
-- Keymaps from lazyvim.plugins.extras.dap.core:
--   <leader>db  - Toggle breakpoint
--   <leader>dc  - Continue
--   <leader>di  - Step into
--   <leader>do  - Step out
--   <leader>dO  - Step over
--   <leader>dU  - Toggle DAP UI
--
-- Preset configs below cover:
--   "Launch file"   - run the currently open TS/JS file
--   "Attach"        - attach to a running node process
--   "NestJS"        - launch src/main.ts via ts-node (for NestJS apps)
--   "Next.js"       - attach to Next.js dev server (start with NODE_OPTIONS='--inspect' next dev)
return {
  {
    "mxsdev/nvim-dap-vscode-js",
    dependencies = { "mfussenegger/nvim-dap" },
    config = function()
      require("dap-vscode-js").setup({
        adapters = { "pwa-node", "pwa-chrome", "node-terminal" },
      })

      local dap = require("dap")
      local js_filetypes = { "typescript", "javascript", "typescriptreact", "javascriptreact" }

      for _, lang in ipairs(js_filetypes) do
        dap.configurations[lang] = {
          {
            type = "pwa-node",
            request = "launch",
            name = "Launch file",
            program = "${file}",
            cwd = "${workspaceFolder}",
            sourceMaps = true,
          },
          {
            type = "pwa-node",
            request = "attach",
            name = "Attach to process",
            processId = require("dap.utils").pick_process,
            cwd = "${workspaceFolder}",
            sourceMaps = true,
          },
          {
            type = "pwa-node",
            request = "launch",
            name = "NestJS (ts-node)",
            runtimeExecutable = "node",
            runtimeArgs = { "--nolazy", "-r", "ts-node/register" },
            program = "${workspaceFolder}/src/main.ts",
            cwd = "${workspaceFolder}",
            sourceMaps = true,
            envFile = "${workspaceFolder}/.env",
          },
          {
            type = "pwa-node",
            request = "attach",
            name = "Next.js (attach)",
            port = 9229,
            cwd = "${workspaceFolder}",
            sourceMaps = true,
            skipFiles = { "<node_internals>/**", "node_modules/**" },
          },
        }
      end
    end,
  },
  -- Auto-install the js-debug-adapter via Mason
  {
    "jay-babu/mason-nvim-dap.nvim",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, { "js" })
    end,
  },
}
