return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      php = { "Intelephense" },
      --     php = { "php-cs-fixer", "injected" },
      --     -- You can also explicitly add formatters for HTML files if needed
      --     html = { "prettier" },
    },
    --   formatters = {
    --     injected = {
    --       options = { ignore_errors = false},
    --     },
    --   },
  },
}
