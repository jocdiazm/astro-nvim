return {
  "nvim-neo-tree/neo-tree.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  event = "VeryLazy",
  keys = {
    { "<leader>e", ":Neotree toggle float<CR>", silent = true, desc = "Float File Explorer" },
    { "<leader><tab>", ":Neotree toggle left<CR>", silent = true, desc = "Left File Explorer" },
  },
  opts = {
    close_if_last_window = true, --og true
    sources = {
      "filesystem",
    },
    auto_clean_after_session_restore = true, --Automatically clean up broken buffers
    popup_border_style = "rounded",
    enable_git_status = true,
    enable_modified_markers = true,
    enable_diagnostics = false,
    sort_case_insensitive = true,
    default_component_configs = {
      indent = {
        with_markers = false,
        with_expanders = true,
      },
      modified = {
        symbol = " ",
        highlight = "NeoTreeModified",
      },
      git_status = {
        symbols = {
          -- Change type
          added = "",
          deleted = "",
          modified = "",
          renamed = "➜",
          -- Status type
          untracked = "",
          ignored = "",
          -- ignored = "",
          unstaged = "✗",
          staged = "",
          conflict = "",
        },
      },
    },
    window = {
      position = "current",
    },
    filesystem = {
      use_libuv_file_watcher = true,
      filtered_items = {
        hide_dotfiles = false,
        hide_gitignored = false,
        hide_hidden = false,
        always_show = {
          ".gitignored",
        },
        hide_by_name = {
          "node_modules",
          "__pycache__",
          "venv",
          ".git",
        },
        never_show = {
          ".DS_Store",
          "thumbs.db",
          "*.pyc",
        },
      },
    },
  },
}
