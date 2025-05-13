return {
  {
    "mfussenegger/nvim-dap",
    dependencies = {
      "mfussenegger/nvim-dap-python",
      {
        "rcarriga/nvim-dap-ui",
        dependencies = {
          "nvim-neotest/nvim-nio", -- dependência necessária para nvim-dap-ui
        },
      },
    },
    config = function()
      local dap = require("dap")
      local dap_python = require("dap-python")
      local dapui = require("dapui")

      dap_python.setup("~/.local/share/nvim/mason/packages/debugpy/venv/bin/python")

      dapui.setup()

      dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated["dapui_config"] = function()
        dapui.close()
      end
      dap.listeners.before.event_exited["dapui_config"] = function()
        dapui.close()
      end

      vim.keymap.set("n", "<F5>", function()
        dap.continue()
      end, { desc = "Iniciar/Continuar Debug" })
      vim.keymap.set("n", "<S-F10>", function()
        dap.continue()
      end, { desc = "Continuar Debug (Shift+F10)" })
      vim.keymap.set("n", "<F10>", function()
        dap.step_over()
      end, { desc = "Step Over" })
      vim.keymap.set("n", "<F11>", function()
        dap.step_into()
      end, { desc = "Step Into" })
      vim.keymap.set("n", "<F12>", function()
        dap.step_out()
      end, { desc = "Step Out" })
      vim.keymap.set("n", "<C-F2>", function()
        dap.disconnect({ terminateDebuggee = true })
      end, { desc = "Parar Execução (Ctrl+F2)" })
      vim.keymap.set("n", "<Leader>x", function()
        dap.toggle_breakpoint()
      end, { desc = "Toggle Breakpoint" })
      vim.keymap.set("n", "<Leader>X", function()
        dap.set_breakpoint(vim.fn.input("Condição para o Breakpoint: "))
      end, { desc = "Breakpoint com condição" })
    end,
  },
}
