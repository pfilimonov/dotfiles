-- ~/.config/nvim/lua/plugins/autosave.lua
return {
  {
    "okuuva/auto-save.nvim",
    event = { "InsertLeave", "TextChanged" },
    opts = {
      enabled = true,

      -- ВАЖНО: НЕ на каждый keystroke!
      trigger_events = {
        immediate_save = { "BufLeave", "FocusLost" }, -- только при уходе
        defer_save = {}, -- НЕ при InsertLeave/TextChanged
        cancel_deferred_save = { "InsertEnter" },
      },

      -- Условия сохранения
      condition = function(buf)
        local fn = vim.fn
        local utils = require("auto-save.utils.data")

        -- НЕ сохранять если:
        if fn.getbufvar(buf, "&modifiable") == 1 and utils.not_in(fn.getbufvar(buf, "&filetype"), {}) then
          return true
        end
        return false
      end,

      -- Дебаунс - не чаще раза в 1 секунду
      debounce_delay = 1000,

      -- Показывать сообщения
      write_all_buffers = false,
      noautocmd = false,
    },
  },
}
