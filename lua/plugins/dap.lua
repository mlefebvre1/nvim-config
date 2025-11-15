return {
  "mfussenegger/nvim-dap",
  opts = function()
    local dap = require("dap")

    -- GDB adapter configuration
    dap.adapters.cppdbg = {
      id = "cppdbg",
      type = "executable",
      command = "gdb",
      args = { "-i", "dap" },
    }

    -- C++ configurations
    dap.configurations.cpp = {
      {
        name = "Launch file with arguments",
        type = "cppdbg",
        request = "launch",
        program = function()
          return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
        end,
        cwd = "${workspaceFolder}",
        stopAtEntry = false,
        args = function()
          local args_string = vim.fn.input("Arguments: ")
          return vim.split(args_string, " +")
        end,
      },
      {
        name = "Launch file (no args)",
        type = "cppdbg",
        request = "launch",
        program = function()
          return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
        end,
        cwd = "${workspaceFolder}",
        stopAtEntry = false,
      },
      {
        name = "Attach to process",
        type = "cppdbg",
        request = "attach",
        processId = require("dap.utils").pick_process,
        cwd = "${workspaceFolder}",
      },
    }

    -- Use same config for C
    dap.configurations.c = dap.configurations.cpp
  end,
}
