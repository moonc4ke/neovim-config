-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options heredocs
vim.g.lazyvim_ruby_lsp = "ruby_lsp"
vim.g.lazyvim_ruby_formatter = "rubocop"
vim.g.lazyvim_php_lsp = "intelephense"

local opt = vim.opt

opt.title = true
opt.titlestring = "%{fnamemodify(getcwd(), ':~:.')}" -- Show relative path from home or project root
opt.titleold = ""

vim.api.nvim_create_autocmd({ "DirChanged", "VimEnter" }, {
  callback = function()
    opt.titlestring = "%{fnamemodify(getcwd(), ':~:.')}" -- Update relative path on directory change
  end,
})

vim.opt.laststatus = 3
