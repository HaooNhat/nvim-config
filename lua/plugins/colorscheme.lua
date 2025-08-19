-- solarized-osaka theme
-- return {
--   "craftzdog/solarized-osaka.nvim",
--   lazy = true,
--   priority = 1000,
--   opts = {
--     transparent = true,
--
--     styles = {
--       floats = "transparent",
--       sidebars = "transparent",
--     },
--   },
-- }

-- catppuccin theme
return {
  "catppuccin/nvim",
  lazy = true,
  priority = 1000,
  opts = {
    flavour = "mocha",

    transparent_background = true,

    styles = {
      floats = "transparent",
      sidebars = "transparent",
    },
  },
}

-- kanagawa for light mode
-- return {
--   "rebelot/kanagawa.nvim",
--   lazy = true,
--   priority = 1000,
--   opts = {
--     -- transparent = true,
--
--     styles = {
--       floats = "transparent",
--       sidebars = "transparent",
--     },
--   },
-- }

-- cyberdream
-- return {
--   "scottmckendry/cyberdream.nvim",
--   lazy = false,
--   priority = 1000,
--   opts = {
--     variant = "dark",
--     transparent = true,
--     italic_comments = true,
--     --   hide_fillchars = true,
--     -- borderless_pickers = true,
--   },
-- }
