return {
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
      presets = {
        bottom_search = true, -- use a classic bottom cmdline for search
        command_palette = false, -- position the cmdline and popupmenu together
        long_message_to_split = true, -- long messages will be sent to a split
        inc_rename = false, -- enables an input dialog for inc-rename.nvim
        lsp_doc_border = true, -- add a border to hover docs and signature help
      },
      messages = {
        view_history = false,
        view_search = false,
      },
      lsp = {
        signature = {
          auto_open = {
            enabled = false,
          },
          enabled = false,
        },
      },
    },
  },

  { "folke/flash.nvim", event = "VeryLazy", enabled = false, opts = {} },
  {
    "folke/zen-mode.nvim",
    event = "User AstroFile",
  },
  {
    "folke/trouble.nvim",
    event = "User AstroFile",
    keys = {
      { "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<cr>", desc = "Trouble all diagnostics" },
      { "<leader>xr", "<cmd>TroubleToggle lsp_references<cr>", desc = "Trouble references" },
      { "<leader>xq", "<cmd>TroubleToggle quickfix<cr>", desc = "Trouble quickfix" },
    },
  },
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
      delay = 700,
    },
  },
}
