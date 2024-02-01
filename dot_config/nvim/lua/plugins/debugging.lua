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
				dapui.close()
			end
			dap.listeners.before.event_exited.dapui_config = function()
				dapui.close()
			end
			dapui.setup()

			local dapgo = require("dap-go")
			dapgo.setup()

			local widgets = require("dap.ui.widgets")
			vim.keymap.set({ "n", "v" }, "<leader>dh", widgets.hover)
			vim.keymap.set({ "n", "v" }, "<leader>dp", widgets.preview)
			vim.keymap.set("n", "<leader>db", dap.toggle_breakpoint)
			vim.keymap.set("n", "<leader>dB", dap.clear_breakpoints)
			vim.keymap.set("n", "<leader>dr", dap.run_last)
			vim.keymap.set("n", "<leader>dc", dap.continue)
			vim.keymap.set("n", "<leader>dt", dapgo.debug_test)
			vim.keymap.set("n", "<leader>dq", dap.terminate)
			vim.keymap.set("n", "<F5>", dap.continue)
			vim.keymap.set("n", "<F10>", dap.step_over)
			vim.keymap.set("n", "<F11>", dap.step_into)
			vim.keymap.set("n", "<F12>", dap.step_out)
			vim.keymap.set("n", "<leader>df", function()
				widgets.centered_float(widgets.frames)
			end)
			vim.keymap.set("n", "<leader>ds", function()
				widgets.centered_float(widgets.scopes)
			end)
		end,
	},
}

