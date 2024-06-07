return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			local config = require("nvim-treesitter.configs")
			config.setup({
				ensure_installed = {
					"lua",
					"javascript",
					"go",
					"typescript",
					"vim",
					"regex",
					"bash",
					"markdown",
					"markdown_inline",
					"proto",
				},
				highlight = { enable = true },
				indent = { enable = true },
			})
		end,
	},
	{
		"numToStr/Comment.nvim",
		opts = {
			mappings = {
				basic = false,
				extra = false,
			},
		},
		lazy = false,
		config = function()
			vim.keymap.set("n", "<leader>cc", "<Plug>(comment_toggle_linewise)", { desc = "Comment toggle linewise" })
			vim.keymap.set("n", "<leader>cC", "<Plug>(comment_toggle_blockwise)", { desc = "Comment toggle linewise" })
			vim.keymap.set(
				"v",
				"<leader>cc",
				"<Plug>(comment_toggle_linewise_visual)",
				{ desc = "Comment toggle linewise (visual)" }
			)
			vim.keymap.set(
				"v",
				"<leader>cC",
				"<Plug>(comment_toggle_blockwise_visual)",
				{ desc = "Comment toggle blockwise (visual)" }
			)
		end,
	},
	{
		"https://github.com/apple/pkl-neovim",
		lazy = true,
		event = "BufReadPre *.pkl",
		dependencies = {
			"nvim-treesitter/nvim-treesitter",
		},
		build = function()
			vim.cmd("TSInstall! pkl")
		end,
	},
}
