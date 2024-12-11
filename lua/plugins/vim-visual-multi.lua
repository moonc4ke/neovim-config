return {
  "mg979/vim-visual-multi",
  init = function()
    vim.g.VM_maps = {
      ["Find Under"] = "<Leader>;n", -- <Leader>;n to start selecting word under cursor
      ["Select All"] = "<Leader>;a", -- <Leader>;a to select all occurrences
      ["Start Regex Search"] = "<Leader>;/", -- <Leader>;/ to start regex search
      ["Add Cursor Down"] = "<Leader>;j", -- <Leader>;j to add cursor down
      ["Add Cursor Up"] = "<Leader>;k", -- <Leader>;k to add cursor up
      ["Select Left"] = "<Leader>;h", -- <Leader>;h for left selection
      ["Select Right"] = "<Leader>;l", -- <Leader>;l for right selection
    }
  end,
}
