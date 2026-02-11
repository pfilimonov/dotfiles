-- ~/.config/nvim/lua/plugins/markdown.lua
return {
  {
    "MeanderingProgrammer/render-markdown.nvim",
    ft = { "markdown" },
    opts = {
      -- Рендерить ТОЛЬКО в normal mode
      render_modes = { "n", "c" },

      -- Задержка перед рендерингом
      debounce = 100,

      -- Отключить LaTeX если не используете
      latex = { enabled = false },

      -- Оптимизация
      sign = { enabled = false },
    },
  },

  -- Browser preview с Mermaid
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function()
      vim.fn["mkdp#util#install"]()
    end,
    keys = {
      {
        "<leader>mp",
        "<cmd>MarkdownPreviewToggle<cr>",
        desc = "Markdown Preview",
      },
    },
    config = function()
      -- Настройки
      vim.g.mkdp_auto_start = 0
      vim.g.mkdp_auto_close = 0
      vim.g.mkdp_refresh_slow = 0
      vim.g.mkdp_theme = "dark"

      -- Порт (если нужен конкретный)
      vim.g.mkdp_port = "8765"

      -- Mermaid конфиг
      vim.g.mkdp_preview_options = {
        mermaid = {
          theme = "dark", -- или "default", "forest", "neutral"
        },
        uml = {},
        katex = {},
        disable_sync_scroll = 0,
        sync_scroll_type = "middle",
      }
    end,
  },
}
