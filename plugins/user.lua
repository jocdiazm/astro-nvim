return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  {
    "folke/flash.nvim",
    enabled = false,
  },
  {
    "folke/noice.nvim",
    opts = {
      presets = {
        lsp_doc_border = true, -- add a border to hover docs and signature help
        command_palette = true, -- position the cmdline and popupmenu together
      },
    },
  },
  {
    "ray-x/lsp_signature.nvim",
    event = "VeryLazy",
    opts = {
      doc_lines = 0, -- will show two lines of comment/doc(if there are more than two lines in doc, will be truncated);
    },
  },
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 3000
    end,
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
  },
}
