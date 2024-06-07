return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 300
	end,
	opts = {},
	config = function()
		local wk = require("which-key")

		wk.register({
			n = {
				name = "notifications",
			},
			d = {
				name = "debugging",
			},
			c = {
				name = "code",
			},
			f = {
				name = "Find",
			},
			w = {
				name = "windows",
			},
		}, {
			prefix = "<leader>",
		})
	end,
}
