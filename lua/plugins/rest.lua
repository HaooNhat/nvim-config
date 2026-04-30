-- REST client for testing NestJS / HTTP APIs
-- Create a .http file, write requests, and run them in-buffer.
-- Example:
--   GET http://localhost:3000/api/users
--   ###
--   POST http://localhost:3000/api/auth/login
--   Content-Type: application/json
--   { "email": "user@example.com", "password": "secret" }
return {
  {
    "mistweaverco/kulala.nvim",
    ft = { "http" },
    keys = {
      {
        "<leader>Rr",
        function()
          require("kulala").run()
        end,
        desc = "Run request",
      },
      {
        "<leader>Ra",
        function()
          require("kulala").run_all()
        end,
        desc = "Run all requests",
      },
      {
        "<leader>Rn",
        function()
          require("kulala").jump_next()
        end,
        desc = "Next request",
      },
      {
        "<leader>Rp",
        function()
          require("kulala").jump_prev()
        end,
        desc = "Prev request",
      },
      {
        "<leader>Rt",
        function()
          require("kulala").toggle_headers()
        end,
        desc = "Toggle headers",
      },
      {
        "<leader>Rc",
        function()
          require("kulala").copy()
        end,
        desc = "Copy as cURL",
      },
    },
    opts = {
      default_view = "body",
      default_env = "dev",
    },
  },
}
