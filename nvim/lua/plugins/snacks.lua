return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      hidden = true, -- показывать скрытые файлы
      follow = true, -- следовать за текущим файлом
      -- Настройки для файлового браузера
      sources = {
        files = {
          hidden = true, -- показывать скрытые файлы
          respect_gitignore = false, -- НЕ уважать .gitignore
        },
      },
    },
  },
}
