return {
  "neovim/nvim-lspconfig",
  enabled = true,
  dependencies = {
    "ray-x/lsp_signature.nvim",
    opts = {
      bind = true,
      handler_opts = {
        border = "rounded",
      },
      -- timer_interval = 800, -- default timer check interval set to lower value if you want to reduce latency
      floating_window = false, -- show hint in a floating window, set to false for virtual text only mode
      floating_window_above_cur_line = false, -- try to place the floating above the current line when possible Note:
      doc_lines = 2,
      hint_enable = true, -- disable hints as it will crash in some terminal
      max_height = 6, -- max height of signature floating_window
      max_width = 50, -- max_width of signature floating_window, line will be wrapped if exceed max_width
    },
  },
}
