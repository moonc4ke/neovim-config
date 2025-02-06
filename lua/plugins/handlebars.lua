return {
  {
    "mustache/vim-mustache-handlebars",
    ft = { "handlebars", "mustache", "hbs" },
    init = function()
      vim.filetype.add({
        extension = {
          handlebars = "handlebars",
          hbs = "handlebars",
        },
      })
    end,
  },
}
