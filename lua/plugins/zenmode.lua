return {
  {
    "folke/zen-mode.nvim",
    opts = {
      window = {
        width = 0.6, -- width will be 60% of the editor width
      },
    },
    keys = { { "<leader>z", "<cmd>ZenMode<cr>", desc = "Zen Mode" } },
  },
}
