-- Neotest adapters for Jest and Vitest (common in Next.js / NestJS / Turborepo)
-- Run tests with <leader>t keymaps provided by lazyvim.plugins.extras.test.core:
--   <leader>tt  - Run nearest test
--   <leader>tT  - Run all tests in file
--   <leader>tr  - Toggle test results panel
--   <leader>ts  - Stop test run
return {
  {
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-neotest/neotest-jest",
      "marilari88/neotest-vitest",
    },
    opts = function(_, opts)
      opts.adapters = opts.adapters or {}
      vim.list_extend(opts.adapters, {
        -- Jest: detects jest.config.{ts,js,mjs} in the package root
        require("neotest-jest")({
          jestCommand = "npx jest --no-coverage",
          -- In a turborepo, each package lives under packages/<name>/
          -- This picks the nearest jest.config relative to the test file
          jestConfigFile = function(file)
            local pkg_root = file:match("(.-/[^/]+/)src/")
            if pkg_root then
              for _, ext in ipairs({ "ts", "js", "mjs", "cjs" }) do
                local cfg = pkg_root .. "jest.config." .. ext
                if vim.uv.fs_stat(cfg) then
                  return cfg
                end
              end
            end
            return vim.fn.getcwd() .. "/jest.config.ts"
          end,
          cwd = function(file)
            return file:match("(.-/[^/]+/)src/") or vim.fn.getcwd()
          end,
          env = { CI = true },
        }),
        -- Vitest: picks up vitest.config.{ts,js} automatically
        require("neotest-vitest"),
      })
    end,
  },
}
