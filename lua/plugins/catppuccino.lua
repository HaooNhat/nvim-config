return {
  {
    "catppuccin/nvim", 
    name = "catppuccin", 
    enabled=true, 
    priority = 1000, 
    config = function()
      require('catppuccin').setup({
        transparent_background = true,
      })

      -- Load the colorscheme
      vim.cmd.colorscheme("catppuccin")

      -- Apply transparency
      vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
      vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    end
  }
}
