return {
  "rebelot/heirline.nvim",
  opts = function(_, opts)
    local status = require "astronvim.utils.status"
    opts.statusline = { -- statusline
      hl = { fg = "fg", bg = "bg" },
      status.component.mode { mode_text = { padding = { left = 1, right = 1 } } }, -- add the mode text
      status.component.git_branch(),
      status.component.file_info {
        filetype = false,
        filename = {
          filename = function() return vim.api.nvim_buf_get_name(0) end,
          fallback = "Empty",
          padding = { left = 1 },
        },
        file_modified = false,
      },
      status.component.git_diff(),
      status.component.diagnostics(),
      status.component.fill(),
      status.component.cmd_info(),
      status.component.fill(),
      -- disabling component lsp
      status.component.lsp(),
      status.component.treesitter(),
      status.component.nav(),
      -- remove the 2nd mode indicator on the right
    }

    -- disable ugly winbar
    opts.winbar = nil

    -- return the final configuration table
    return opts
  end,
}
