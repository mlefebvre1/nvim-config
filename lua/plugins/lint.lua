local golangcilint = require("lint.linters.golangcilint")
return {
  "mfussenegger/nvim-lint",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local lint = require("lint")

    lint.linters_by_ft = {
      golangcilint = { "golangci-lint" },
    }
  end,
}
