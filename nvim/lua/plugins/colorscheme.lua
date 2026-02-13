-- ~/.config/nvim/lua/plugins/colorscheme.lua
return {
  -- Отключи gruvbox (или просто удали его блок)
  -- { "ellisonleao/gruvbox.nvim", enabled = false },

  -- Новая тема cyberdream
  {
    "scottmckendry/cyberdream.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("cyberdream").setup({
        variant = "light", -- или "default" для темной, "auto" для авто
        transparent = false,
        -- Другие опции из документации можно добавить тут
      })
      vim.cmd.colorscheme("cyberdream")
    end,
  },
}
