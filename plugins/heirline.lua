return {
  "rebelot/heirline.nvim",
  opts = function(_, opts)
    local status = require "astronvim.utils.status"
    opts.statusline = { -- statusline
      hl = { fg = "fg", bg = "none" },
      status.component.mode { mode_text = { padding = { left = 1, right = 1 } } }, -- add the mode text
      status.component.git_branch {
        hl = { bg = "none" },
      },
      status.component.file_info {
        filetype = false,
        filename = {
          filename = function() return vim.api.nvim_buf_get_name(0) end,
          fallback = "Empty",
          padding = { left = 1 },
        },
        file_modified = false,
        hl = { bg = "none" },
      },
      status.component.git_diff {
        hl = { bg = "none" },
      },
      status.component.diagnostics {
        hl = { bg = "none" },
      },
      status.component.fill {
        hl = { bg = "none" },
      },
      status.component.cmd_info {
        hl = { bg = "none" },
      },
      status.component.fill {
        hl = { bg = "none" },
      },
      -- disabling component lsp
      status.component.lsp {
        hl = { bg = "none" },
      },
      status.component.treesitter {
        hl = { bg = "none" },
      },
      status.component.nav {
        hl = { bg = "none" },
      },
      -- remove the 2nd mode indicator on the right
    }

    -- disable ugly winbar
    opts.winbar = nil

    -- disable ugly winbar

    -- return the final configuration table
    return opts
  end,
}
