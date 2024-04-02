local has_words_before = function()
  unpack = unpack or table.unpack
  local line, col = unpack(vim.api.nvim_win_get_cursor(0))
  return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match "%s" == nil
end

local luasnip = require "luasnip"

return {
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "User AstroFile",
    opts = { suggestion = { auto_trigger = true, debounce = 500 } },
  },
  -- { "rafamadriz/friendly-snippets" },
  {
    "molleweide/LuaSnip-snippets.nvim",
  },
  {
    "L3MON4D3/LuaSnip",
    dependencies = { "rafamadriz/friendly-snippets" },
    run = "make install_jsregexp",
  },
  { -- override nvim-cmp plugin
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "L3MON4D3/LuaSnip",
      "saadparwaiz1/cmp_luasnip",
      -- "rafamadriz/friendly-snippets",
      "molleweide/LuaSnip-snippets.nvim",
      "zbirenbaum/copilot.lua",
    },
    -- override the options table that is used in the `require("cmp").setup()` call
    opts = function(_, opts)
      -- opts parameter is the default options table
      -- the function is lazy loaded so cmp is able to be required
      opts.snippet = {
        expand = function(args) luasnip.lsp_expand(args.body) end,
      }
      local cmp = require "cmp"
      -- copilot
      local copilot = require "copilot.suggestion"

      local snip_status_ok = pcall(require, "luasnip")
      if not snip_status_ok then return end

      opts.preselect = cmp.PreselectMode.None
      --
      -- modify the mapping part of the table
      if not opts.mapping then opts.mapping = {} end
      opts.mapping["<C-Space>"] = cmp.mapping.complete()
      opts.mapping["<CR>"] = cmp.mapping.confirm { select = true, behavior = cmp.ConfirmBehavior.Insert }
      opts.mapping["<Tab>"] = cmp.mapping(function(fallback)
        if luasnip.expand_or_jumpable() then
          luasnip.expand_or_jump() --original working
        elseif cmp.visible() then
          cmp.select_next_item()
        elseif has_words_before() then
          cmp.complete()
        else
          fallback()
        end
      end, { "i", "s" })

      opts.mapping["<S-Tab>"] = cmp.mapping(function(fallback)
        if luasnip.jumpable(-1) then
          luasnip.jump(-1)
        elseif cmp.visible() then
          cmp.select_prev_item()
        else
          fallback()
        end
      end, { "i", "s" })

      --Copilot mapping
      opts.mapping["<C-n>"] = cmp.mapping(function()
        if copilot.is_visible() then copilot.next() end
      end)

      opts.mapping["<C-p>"] = cmp.mapping(function()
        if copilot.is_visible() then copilot.prev() end
      end)

      opts.mapping["<C-c>"] = cmp.mapping(function()
        if copilot.is_visible() then copilot.dismiss() end
      end)

      opts.mapping["<C-y>"] = cmp.mapping(function()
        if copilot.is_visible() then copilot.accept() end
      end)

      opts.mapping["<C-right>"] = cmp.mapping(function()
        if copilot.is_visible() then copilot.accept_word() end
      end)

      opts.mapping["<C-down>"] = cmp.mapping(function()
        if copilot.is_visible() then copilot.accept_line() end
      end)

      opts.mapping["<C-enter>"] = cmp.mapping(function()
        if copilot.is_visible() then copilot.accept_line() end
      end)

      opts.sources = cmp.config.sources {
        { name = "nvim_lsp", priority = 1000 },
        { name = "luasnip", priority = 750 },
        { name = "copilot", priority = 700 },
        { name = "buffer", priority = 500 },
        { name = "path", priority = 250 },
      }
    end,
  },
}
