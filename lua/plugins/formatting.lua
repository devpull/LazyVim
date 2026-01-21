return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      css = { "stylelint" },
      scss = { "stylelint" },
      html = { "prettier" },
      -- Add other file types as needed
    },
    -- Other conform options
  },
}
