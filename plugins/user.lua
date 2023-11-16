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
    "lukas-reineke/indent-blankline.nvim",
    enabled = false,
    main = "ibl",
    opts = {
      -- indent = {
      -- char = "|",
      -- smart_indent_cap = true,
      -- },
      scope = {
        enabled = true,
      },
    },
  },
  {
    "folke/flash.nvim",
    enabled = false,
  },
}
