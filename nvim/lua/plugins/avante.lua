return {
  "yetone/avante.nvim",
  event = "VeryLazy",
  lazy = false,
  version = false,
  opts = {
    provider = "claude",
    mode = "legacy",
    providers = {
      claude = {
        endpoint = "https://api.anthropic.com",
        extra_request_body = {
          model = "claude-sonnet-4-5",
          temperature = 0,
          max_tokens = 4096,
        },
      },
    },
    behaviour = {
      auto_suggestions = false,
      auto_apply_diff_after_generation = false,
      auto_approve_tool_permissions = false,
      enable_fastapply = false,
      auto_add_current_file = false,
      acp_follow_agent_locations = false,
      support_paste_from_clipboard = true,
    },
  },
  build = "make",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "stevearc/dressing.nvim",
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    "nvim-tree/nvim-web-devicons",
    {
      "HakonHarnes/img-clip.nvim",
      event = "VeryLazy",
      opts = {
        default = {
          embed_image_as_base64 = false,
          prompt_for_file_name = false,
          drag_and_drop = {
            insert_mode = true,
          },
        },
      },
    },
    {
      "MeanderingProgrammer/render-markdown.nvim",
      opts = {
        file_types = { "markdown", "Avante" },
      },
      ft = { "markdown", "Avante" },
    },
  },
}
