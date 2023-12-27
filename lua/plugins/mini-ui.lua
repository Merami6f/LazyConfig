return {
	{
		"echasnovski/mini.pairs",
		version = false,
		event = "VeryLazy",
		opts = {},
	},
	{
		"echasnovski/mini.surround",
		opts = {
			custom_surroundings = nil,
			-- Duration (in ms) of highlight when calling `MiniSurround.highlight()`
			highlight_duration = 1500,
			n_lines = 20,
			respect_selection_type = false,
			search_method = "cover",

			-- Whether to disable showing non-error feedback
			silent = false,
			mappings = {
				add = "gsa", -- Add surrounding in Normal and Visual modes
				delete = "gsd", -- Delete surrounding
				find = "gsf", -- Find surrounding (to the right)
				find_left = "gsF", -- Find surrounding (to the left)
				highlight = "gsh", -- Highlight surrounding
				replace = "gzs", -- Replace surrounding
				update_n_lines = "gsn", -- Update `n_lines`
			},
		},
	},
}
