return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.5",
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = {
    file_ignore_patterns = {
      "node_modules",
      "dist",
    },
  },
  keys = {
    { "<leader>fh", "<cmd>Telescope find_files hidden=true<cr>", desc = "Telescope Files Hidden" },
  },
}
