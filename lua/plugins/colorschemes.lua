return {
  {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    priority = 1000,
    opts = {
      custom_highlights = function(colors)
        return {
          BorderBg = { bg = colors.none, fg = colors.lavender },
          -- :
          -- Comment = { fg = colors.flamingo },
          -- TabLineSel = { bg = colors.pink },
          -- CmpBorder = { fg = colors.surface2 },
          -- Pmenu = { bg = colors.none },
        }
      end,
      -- transparent_background = true,
      integrations = {
        alpha = true,
        aerial = true,
        dap = { enabled = true, enable_ui = true },
        barbar = true,
        mason = true,
        neotree = true,
        notify = true,
        nvimtree = false,
        semantic_tokens = true,
        symbols_outline = true,
        telescope = true,
        ts_rainbow = false,
        harpoon = true,
        sandwich = false,
        noice = true,
        mini = true,
        leap = true,
        markdown = true,
        neotest = true,
        cmp = {
          enabled = true,
          border = true,
        },
        overseer = true,
        lsp_trouble = true,
        rainbow_delimiters = false,
        gitsigns = true,
        notifier = true,
        dashboard = true,
        navic = { enabled = true, custom_bg = "lualine" },
        treesitter = true,
        which_key = true,
        native_lsp = {
          enabled = true,
          underlines = {
            errors = { "undercurl" },
            hints = { "undercurl" },
            warnings = { "undercurl" },
            information = { "undercurl" },
          },
        },
        flash = true,
        illuminate = false,
        indent_blankline = { enabled = true },
      },
    },
  },
  {
    "nvim-telescope/telescope.nvim",
    optional = true,
    opts = {
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
    },
  },
  {
    "sainnhe/sonokai",
    init = function() -- init function runs before the plugin is loaded
      vim.g.sonokai_style = "shusia"
    end,
  },
  {
    "sainnhe/gruvbox-material",
    priority = 1000,
    lazy = false,
    init = function() -- init function runs before the plugin is loaded
      vim.g.gruvbox_material_enable_italic = 1
      vim.g.gruvbox_material_enable_bold = 1
      vim.g.gruvbox_material_background = "hard"
      vim.g.gruvbox_material_float_style = "dim"
      vim.g.gruvbox_material_better_performance = 1
      vim.g.gruvbox_material_ui_contrast = "low"
      -- vim.g.gruvbox_material_transparent_background = 2
    end,
  },
  {
    "sainnhe/everforest",
    lazy = false,
    priority = 1000,
  },
  { "dasupradyumna/midnight.nvim", lazy = false, priority = 1000 },
  -- { "projekt0n/github-nvim-theme", lazy = false, priority = 1000 },
  { "rose-pine/neovim", name = "rose-pine", lazy = false, priority = 1000 },
  { "folke/tokyonight.nvim", lazy = false, priority = 1000 },
  { "Mofiqul/dracula.nvim", lazy = false, priority = 1000 },
  {
    "loctvl842/monokai-pro.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      terminal_colors = true,
      devicons = true, -- highlight the icons of `nvim-web-devicons`
      filter = "pro", -- classic | octagon | pro | machine | ristretto | spectrum
      plugins = {
        indent_blankline = {
          context_highlight = "pro", -- default | pro
          context_start_underline = false,
        },
      },
    },
  },
  {
    "AlexvZyl/nordic.nvim",
    lazy = false,
    priority = 1000,
    -- config = function() require("nordic").load() end,
  },
  {
    "shaunsingh/nord.nvim",
    lazy = false,
    priority = 1000,
    init = function()
      vim.g.nord_contrast = true
      vim.g.nord_borders = false
      vim.g.nord_disable_background = false
      vim.g.nord_italic = false
      vim.g.nord_uniform_diff_background = true
      vim.g.nord_bold = false
    end,
  },
  {
    "lukas-reineke/headlines.nvim",
    lazy = false,
    priority = 1000,
    optional = true,
    opts = {
      markdown = {
        headline_highlights = {
          "Headline1",
          "Headline2",
          "Headline3",
          "Headline4",
          "Headline5",
          "Headline6",
        },
      },
    },
  },
  {
    "akinsho/bufferline.nvim",

    lazy = false,
    priority = 1000,
    optional = true,
    opts = function(_, opts)
      return require("astronvim.utils").extend_tbl(opts, {
        highlights = require("nord").bufferline.highlights { italic = true, bold = true },
        options = { separator_style = "thin" },
      })
    end,
  },
  {
    "olimorris/onedarkpro.nvim",

    lazy = false,
    priority = 1000,
    opts = {
      options = {
        highlight_inactive_windows = true,
      },
    },
  },

  { "nyoom-engineering/oxocarbon.nvim", lazy = false, priority = 1000 },
  { "savq/melange-nvim", lazy = false, priority = 1000 },
  { "AstroNvim/astrotheme", lazy = false, priority = 1000 },
  { "LunarVim/primer.nvim", lazy = false, priority = 1000 },
  { "marko-cerovac/material.nvim", lazy = false, priority = 1000 },
  {
    "olivercederborg/poimandres.nvim",
    lazy = false,
    priority = 1000,
    config = function() require("poimandres").setup {} end,

    -- optionally set the colorscheme within lazy config
    init = function() vim.cmd "colorscheme poimandres" end,
  },
  {
    "2nthony/vitesse.nvim",
    lazy = false,
    priority = 1000,
    dependencies = {
      "tjdevries/colorbuddy.nvim",
    },
  },
}
