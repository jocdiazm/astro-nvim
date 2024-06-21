return {
  "supermaven-inc/supermaven-nvim",
  enabled = true,
  opts = {
    log_level = "off", -- set to "off" to disable logging completely
    keymaps = {
      accept_suggestion = "<C-l>",
      clear_suggestion = "<A-i>",
      accept_word = "<A-w>",
    },
    disable_inline_completion = true, -- disables inline completion for use with cmp
    disable_keymaps = false, -- disables built in keymaps for more manual control
  },
}
