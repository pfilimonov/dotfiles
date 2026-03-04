return {
  "danymat/neogen",
  dependencies = "nvim-treesitter/nvim-treesitter",
  config = function()
    require("neogen").setup({
      enabled = true,
      languages = {
        cpp = {
          template = {
            annotation_convention = "doxygen",
          },
        },
        python = {
          template = {
            annotation_convention = "google_docstrings",
          },
        },
      },
    })

    vim.keymap.set("n", "<Leader>D", function()
      require("neogen").generate()
    end, { desc = "Generate docstring" })
  end,
}
