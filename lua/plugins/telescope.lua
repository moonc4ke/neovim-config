return {
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      {
        "<leader>fh",
        function()
          require("telescope.builtin").find_files({
            hidden = true,
            no_ignore = true,
            respect_gitignore = false,
            file_ignore_patterns = { "^.git/", "^node_modules/" },
          })
        end,
        desc = "Find hidden files",
      },
      {
        "<leader>sh",
        function()
          require("telescope.builtin").live_grep({
            additional_args = { "--hidden", "--no-ignore" },
            glob_pattern = { "!.git", "!node_modules" },
          })
        end,
        desc = "Grep hidden files",
      },
    },
    opts = function(_, opts)
      opts.defaults = vim.tbl_deep_extend("force", opts.defaults or {}, {
        file_ignore_patterns = { "^.git/", "^node_modules/" },
        vimgrep_arguments = {
          "rg",
          "--color=never",
          "--no-heading",
          "--with-filename",
          "--line-number",
          "--column",
          "--smart-case",
          "--hidden",
          "--glob",
          "!.git",
          "--glob",
          "!node_modules",
        },
      })
      return opts
    end,
  },
}
