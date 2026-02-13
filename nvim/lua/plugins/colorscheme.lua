-- ~/.config/nvim/lua/plugins/colorscheme.lua
return {

  {
    "scottmckendry/cyberdream.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("cyberdream").setup({
        variant = "auto", -- или "default" для темной, "auto" для авто
        transparent = false,
        -- Другие опции из документации можно добавить тут
      })
    end,
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("tokyonight").setup({
        style = "day", -- для светлой версии
      })
    end,
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        flavour = "latte", -- latte, frappe, macchiato, mocha
      })
    end,
  },
  {
    "mofiqul/vscode.nvim",
    name = "vscode",
    lazy = false,
    priority = 1000,
    config = function()
      require("vscode").setup({
        style = "light",
      })
    end,
  },
}
