return {
	{
		"mfussenegger/nvim-dap",
		dependencies = {
			"rcarriga/nvim-dap-ui",
			"leoluz/nvim-dap-go",
		},
		config = function()
			local dap, dapui = require("dap"), require("dapui")
			dap.listeners.before.attach.dapui_config = function()
				dapui.open()
			end
			dap.listeners.before.launch.dapui_config = function()
				dapui.open()
			end
			dap.listeners.before.event_terminated.dapui_config = function()
				-- dapui.close()
			end
			dap.listeners.before.event_exited.dapui_config = function()
				-- dapui.close()
			end
			dapui.setup()

			local dapgo = require("dap-go")
			dapgo.setup()

			local widgets = require("dap.ui.widgets")
			vim.keymap.set({ "n", "v" }, "<leader>dh", widgets.hover, { desc = "Hover" })
			vim.keymap.set({ "n", "v" }, "<leader>dp", widgets.preview, { desc = "Preview" })
			vim.keymap.set("n", "<leader>db", dap.toggle_breakpoint, { desc = "Toggle breakpoint" })
			vim.keymap.set("n", "<leader>dB", dap.clear_breakpoints, { desc = "Clear breakpoints" })
			vim.keymap.set("n", "<leader>dr", dap.run_last, { desc = "Rerun" })
			vim.keymap.set("n", "<leader>dc", dap.continue, { desc = "Continue" })
			vim.keymap.set("n", "<leader>dt", dapgo.debug_test, { desc = "Debug test (Go)" })
			vim.keymap.set("n", "<leader>dq", function()
				dap.terminate()
				dapui.close()
			end, { desc = "Terminate" })
			vim.keymap.set("n", "<F4>", dap.step_over, { desc = "Step over" })
			vim.keymap.set("n", "<F5>", dap.step_out, { desc = "Step out" })
			vim.keymap.set("n", "<F6>", dap.step_into, { desc = "Step into" })
			vim.keymap.set("n", "<leader>df", function()
				widgets.centered_float(widgets.frames)
			end, { desc = "Frames" })
			vim.keymap.set("n", "<leader>ds", function()
				widgets.centered_float(widgets.scopes)
			end, { desc = "Scopes" })
		end,
	},
}
