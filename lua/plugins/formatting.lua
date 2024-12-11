return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        -- JavaScript
        javascript = { "eslint" },
        javascriptreact = { "eslint" },
        -- TypeScript
        typescript = { "eslint" },
        typescriptreact = { "eslint" },
        -- Vue
        vue = { "eslint" },
      },
      formatters = {
        eslint = {
          command = "eslint_d",
          args = { "--fix-to-stdout", "--stdin", "--stdin-filename", "$FILENAME" },
          stdin = true,
        },
      },
    },
  },
}
