return {
	"rmagatti/auto-session",
	config = function()
		require("auto-session").setup({
			log_level = "error",
			pre_save_cmds = {
				function()
					require("neo-tree.sources.manager").close_all()
				end,
			},
			cwd_change_handling = {
				restore_upcoming_session = true,
				pre_cwd_changed_hook = nil,
				post_cwd_changed_hook = function()
					require("lualine").refresh()
				end,
			},
		})
	end,
}
