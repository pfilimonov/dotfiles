return {
  "olimorris/codecompanion.nvim",
  version = "^18.0.0",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
  opts = {
    display = {
      chat = {
        window = {
          width = 0.25,
          relative = "editor",
          border = "rounder",
        },
      },
    },
    interactions = {
      chat = {
        adapter = "anthropic",
        model = "claude-sonnet-4-5",
      },
    },
  },
}
