return {
  {
    "AstroNvim/astrocore",
    ---@param opts AstroCoreOpts
    opts = function(_, opts)
      for k, _ in pairs(opts.mappings.n) do
        if k:find "^<Leader>b" then opts.mappings.n[k] = false end
      end
    end,
  },
  {
    "rebelot/heirline.nvim",
    enabled = false,
    opts = function(_, opts)
      local status = require "astroui.status"
      opts.statusline = { -- statusline
        hl = { fg = "fg", bg = "bg" },
        status.component.mode(),
        status.component.git_branch(),
        status.component.file_info {
          -- enable the file_icon and disable the highlighting based on filetype
          filename = {
            fallback = "Empty",
          },
          -- disable some of the info
          filetype = false,
          file_read_only = false,
          -- add padding
          padding = { right = 1 },
          -- define the section separator
          surround = { separator = "left", condition = false },
        },
        status.component.git_diff(),
        status.component.diagnostics(),
        status.component.fill(),
        status.component.cmd_info(),
        status.component.fill(),
        -- status.component.lsp(),
        status.component.virtual_env(),
        status.component.treesitter(),
        status.component.nav(),
      }
      opts.tabline = nil -- remove tabline
      opts.winbar = nil -- remove winbar
      return opts
    end,
  },
  { "echasnovski/mini.statusline", version = "*", opts = {} },
  {
    {
      "b0o/incline.nvim",
      name = "incline",
      dependencies = { "SmiteshP/nvim-navic", "nvim-tree/nvim-web-devicons" },
      config = function()
        local helpers = require "incline.helpers"
        local navic = require "nvim-navic"
        local devicons = require "nvim-web-devicons"
        require("incline").setup {
          window = {
            padding = 0,
            margin = { horizontal = 0, vertical = 0 },
          },
          render = function(props)
            local filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(props.buf), ":t")
            if filename == "" then filename = "[No Name]" end
            local ft_icon, ft_color = devicons.get_icon_color(filename)
            local modified = vim.bo[props.buf].modified
            return {
              ft_icon and { " ", ft_icon, " ", guibg = ft_color, guifg = helpers.contrast_color(ft_color) } or "",
              " ",
              { filename, gui = modified and "bold,italic" or "bold" },
              " ",
              guibg = "bg",
            }
          end,
        }
      end,
    },
  },
}
