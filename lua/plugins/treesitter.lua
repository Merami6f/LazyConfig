-- TODO: add treesitter text-object and undestand it ref. https://youtu.be/ff0GYrK3nT0?si=XMJYYkptjO7aBx5q
return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	lazy = false,
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = { "lua", "c", "cpp", "vim", "vimdoc", "dart" },
			sync_install = false,
			auto_install = true,
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = true,
			},
			incremental_selection = {
				enable = true,
				keymaps = {
					-- section commands, active in v mode
					init_selection = "gss", -- set to `false` to disable one of the mappings
					node_incremental = "gsi",
					scope_incremental = "gss",
					node_decremental = "gsd",
				},
			},
		})
	end,
}
