-- TODO: add fzf as extention in telescope
-- TODO: add harpoons
-- NOTE: need more config
return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.5",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		require("telescope").setup({})
	end,
}
