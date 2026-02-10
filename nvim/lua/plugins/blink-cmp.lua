-- ~/.config/nvim/lua/plugins/blink-cmp.lua
return {
  {
    "saghen/blink.cmp",
    opts = {
      keymap = {
        preset = "default",

        -- Enter НЕ принимает автоматически
        ["<CR>"] = { "fallback" },

        -- Tab принимает подсказку
        ["<Tab>"] = { "accept", "fallback" },

        -- Навигация
        ["<C-n>"] = { "select_next", "fallback" },
        ["<C-p>"] = { "select_prev", "fallback" },

        -- Закрыть popup
        ["<C-e>"] = { "hide", "fallback" },
      },

      accept = {
        auto_brackets = {
          enabled = true,
        },
      },

      trigger = {
        completion = {
          show_on_insert_on_trigger_character = true,
        },
      },
    },
  },
}
