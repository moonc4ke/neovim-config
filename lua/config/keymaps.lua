-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set(
  "n",
  "<leader>fp",
  ":let @+ = expand('%:~:.') | echo expand('%:~:.')<CR>",
  { desc = "Show and copy file relative path" }
)

local telescope = require("telescope.builtin")
vim.keymap.set("n", "<leader>sf", function()
  telescope.live_grep({
    additional_args = function()
      return { "--fixed-strings" }
    end,
  })
end, { desc = "Search with fixed strings (no regex)" })
