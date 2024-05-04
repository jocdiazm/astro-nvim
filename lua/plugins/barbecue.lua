return {
  "utilyre/barbecue.nvim",
  name = "barbecue",
  enabled = false,
  lazy = true,
  -- event = "User AstroFile",
  priority = 500,
  version = "*",
  dependencies = {
    "SmiteshP/nvim-navic",
    "nvim-tree/nvim-web-devicons", -- optional dependency
  },
  opts = {
    -- configurations go here
  },
}
