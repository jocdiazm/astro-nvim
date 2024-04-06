-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  -- themes
  { import = "astrocommunity.colorscheme.catppuccin" },
  -- completion
  { import = "astrocommunity.completion.copilot-lua" },
  -- diagnostics
  { import = "astrocommunity.diagnostics.trouble-nvim" },
  -- motion
  -- { import = "astrocommunity.motion.leap-nvim" },
  -- utilities
  { import = "astrocommunity.utility.noice-nvim" },
  -- packs
  { import = "astrocommunity.pack.docker" },
  { import = "astrocommunity.pack.sql" },
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.pack.python" },
}
