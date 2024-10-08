return {
  {
    "nvim-telescope/telescope.nvim",
    -- tag = "0.1.6",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
      defaults = {
        vimgrep_arguments = {
          "rg",
          "--color=never",
          "--no-heading",
          "--with-filename",
          "--line-number",
          "--column",
          "--smart-case",
          "--ignore-file",
          ".gitignore",
        },
        file_ignore_patterns = {
          "^./.git/",
          "^./.cache/",
          "node_modules",
          "^node_modules/",
          "^dist/",
          "^build/",
          "^vendor/",
        },
      },
      extensions = {
        fzf = {
          fuzzy = true, -- false will only do exact matching
          override_generic_sorter = true, -- override the generic sorter
          override_file_sorter = true, -- override the file sorter
          case_mode = "smart_case", -- or "ignore_case" or "respect_case"
        },
      },
    },
    keys = {
      { "<leader>fh", "<cmd>Telescope find_files hidden=true<cr>", desc = "Telescope Files Hidden" },
      {
        "<leader>lsw",
        "<cmd>Telescope lsp_workspace_symbols path_display={'smart'} hidden=true<cr>",
        desc = "Telescope Find Workspace symbols",
      },
    },
  },

  {
    "nvim-telescope/telescope-fzf-native.nvim",
    build = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build",
  },
}
