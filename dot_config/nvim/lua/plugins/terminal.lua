return {
	"akinsho/toggleterm.nvim",
	config = function()
		require("toggleterm").setup({
			on_open = function()
				vim.fn.timer_start(1, function()
					vim.cmd("startinsert!")
				end)
			end,
		})
	end,
}
