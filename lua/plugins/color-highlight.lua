return {
  {
    "NvChad/nvim-colorizer.lua",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require("colorizer").setup({
        filetypes = {
          "css",
          "scss",
          "sass",
          "html",
          "javascript",
          "typescript",
          "jsx",
          "tsx",
          "ruby",
          "eruby",
        },
        user_default_options = {
          RGB = true, -- #RGB hex codes
          RRGGBB = true, -- #RRGGBB hex codes
          RRGGBBAA = true, -- #RRGGBBAA hex codes
          rgb_fn = true, -- CSS rgb() and rgba() functions
          hsl_fn = true, -- CSS hsl() and hsla() functions
          css = true, -- Enable all CSS features
          css_fn = true, -- Enable all CSS *functions*
          mode = "background", -- Set to "foreground" for colored text instead of background
          tailwind = true, -- Enable tailwind colors
        },
      })
    end,
  },
}
