local colors = require "catppuccin.palettes.mocha"
return { -- this table overrides highlights in all themes
  -- Normal = { bg = "#000000" },
  CursorLineNr = {
    -- fg = "#94e2d5",
    fg = colors.blue,
  },
  TreesitterContext = {
    bg = "#1c1c2c",
  },
  TreesitterContextLineNumber = {
    fg = "#f2cdcd",
  },
}
