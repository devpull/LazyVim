return {
  "nvim-neotest/neotest",
  dependencies = {
    "nvim-neotest/neotest-jest", -- The Jest adapter
    "nvim-treesitter/nvim-treesitter", -- Required dependency for parsing
    "nvim-lua/plenary.nvim", -- Required dependency
    "nvim-neotest/nvim-nio", -- Required dependency
  },
  opts = {
    adapters = {
      ["neotest-jest"] = {
        -- Optional: customize the Jest command or config file
        -- just specifying the adapter name is often enough
        -- command = "npm test --",
        -- env = { CI = true },
        log_level = vim.log.levels.DEBUG,
        cwd = function(path)
          return vim.fn.getcwd()
        end,
      },
    },
  },
}
