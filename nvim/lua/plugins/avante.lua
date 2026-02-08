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
        disable_tools = true,
      },
    },
    file_selector = {
      provider = nil,
    },
    selector = {
      provider = "native",
      provider_opts = {},
      exclude_auto_select = { "*" },
    },
    disable_tools = true,
    disabled_tools = {
      "read_file",
      "read_file_toplevel_symbols",
      "search_keyword",
      "glob",
      "rag_search",
      "bash",
      "create_file",
      "delete_path",
      "move_path",
      "copy_path",
      "create_dir",
      "edit_file",
      "fetch",
      "web_search",
      "python",
      "git commit",
      "git diff",
      "view",
    },
    mappings = {
      files = {
        add_current = "<leader>ac",
        add_all_buffers = false,
      },
      diff = {
        ours = "co",
        theirs = "ct",
        all_theirs = "ca",
        both = "cb",
        cursor = "cc",
        next = "]x",
        prev = "[x",
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
