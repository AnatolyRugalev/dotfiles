return {
	"okuuva/auto-save.nvim",
	config = function()
		require("auto-save").setup({
			trigger_events = { -- See :h events
				immediate_save = { "FocusLost" }, -- vim events that trigger an immediate save
				defer_save = {}, -- vim events that trigger a deferred save (saves after `debounce_delay`)
				cancel_defered_save = {}, -- vim events that cancel a pending deferred save
			},
		})
	end,
}
