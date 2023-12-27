-- return { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} }
return {
	"echasnovski/mini.indentscope",
	config = function()
		vim.api.nvim_create_autocmd("FileType", {
			pattern = { "help", "alpha", "dashboard", "neo-tree", "Trouble", "lazy", "mason" },
			callback = function()
				vim.b.miniindentscope_disable = true
			end,
		})
		require("mini.indentscope").setup({
			event = "BufReadPre",
			symbol = "│",
			options = { try_as_border = true },
		})
	end,
}
