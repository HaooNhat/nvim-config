return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      tailwindcss = {
        settings = {
          tailwindCSS = {
            classFunctions = { "tw", "clsx", "cn", "cva", "tw\\.[a-z-]+" },
          },
        },
      },
    },
  },
}
