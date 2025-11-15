return {
  {
    "chrisgrieser/nvim-spider",
    subwordMovement = true,
    lazy = true, -- Set to true to lazy-load the plugin
    opts = {}, -- Optional: Add any specific configuration options for nvim-spider here
    keys = {
      -- Define your keybindings for nvim-spider motions
      {
        "w",
        "<cmd>lua require('spider').motion('w')<CR>",
        mode = { "n", "o", "x" },
        desc = "Move to start of next word",
      },
      { "e", "<cmd>lua require('spider').motion('e')<CR>", mode = { "n", "o", "x" }, desc = "Move to end of word" },
      {
        "b",
        "<cmd>lua require('spider').motion('b')<CR>",
        mode = { "n", "o", "x" },
        desc = "Move to start of previous word",
      },
      -- Add more keybindings as needed based on nvim-spider's documentation
    },
  },
}
