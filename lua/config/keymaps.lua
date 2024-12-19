-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set(
  "n",
  "<leader>fp",
  ":let @+ = expand('%:~:.') | echo expand('%:~:.')<CR>",
  { desc = "Show and copy file relative path" }
)

vim.keymap.set("n", "<leader>o", ":!open %<CR>", { desc = "Open file in browser" })
