return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      tailwindcss = {
        settings = {
          tailwindCSS = {
            classFunctions = { "tw", "clsx", "cn", "tw\\.[a-z-]+" },
          },
        },
      },
    },
  },
}
