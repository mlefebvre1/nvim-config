return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  build = ":Copilot auth",
  event = "BufReadPost",
  opts = {
    suggestion = {
      enabled = false,
      auto_trigger = false,
      hide_during_completion = false,
      keymap = {
        accept = false, -- handled by nvim-cmp / blink.cmp
        next = "<C-]>",
        prev = "<C-[>",
      },
    },
    panel = {
      enabled = true,
      auto_refresh = true,
      keymap = {
        jump_prev = "[[",
        jump_next = "]]",
        accept = "<CR>",
        refresh = "gr",
        open = "<M-CR>",
      },
    },
    filetypes = {
      markdown = true,
      help = true,
    },
  },
  keys = {
    { "<leader>cp", "<cmd>Copilot panel<cr>", desc = "Open Copilot Panel" },
  },
}
