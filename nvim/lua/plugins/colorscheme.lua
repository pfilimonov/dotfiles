-- ~/.config/nvim/lua/plugins/colorscheme.lua
return {
  {
    "ellisonleao/gruvbox.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("gruvbox").setup({
        contrast = "hard", -- or "soft" для светлого
        transparent_mode = false, -- использовать фон терминала
      })
      vim.opt.background = "light"
      vim.cmd([[colorscheme gruvbox]])
    end,
  },
}
