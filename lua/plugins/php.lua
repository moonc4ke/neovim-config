return {
  -- Disable phpcs in null-ls
  {
    "nvimtools/none-ls.nvim",
    optional = true,
    opts = function(_, opts)
      opts.sources = opts.sources or {}
      -- Remove phpcs from sources
      opts.sources = vim.tbl_filter(function(source)
        return source.name ~= "phpcs"
      end, opts.sources)
    end,
  },
  -- Disable phpcs in nvim-lint
  {
    "mfussenegger/nvim-lint",
    optional = true,
    opts = {
      linters_by_ft = {
        php = {}, -- Empty the php linters list
      },
    },
  },
  -- Prevent phpcs from being installed
  {
    "mason.nvim",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      -- Filter out phpcs from ensure_installed
      opts.ensure_installed = vim.tbl_filter(function(pkg)
        return pkg ~= "phpcs"
      end, opts.ensure_installed)
    end,
  },
}
