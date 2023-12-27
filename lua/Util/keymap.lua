-- NOTE: use "Util.keymap" for add more keymap
-- WARN: i dont know how to make 2 keybind for 1 commmands ps. used for wincmd navigate

local map = vim.keymap.set
local opts = { noremap = true }

-- save file
map("n", "<C-s>", "<Cmd>s<CR>", opts, { desc = "Save Current Buff" })
map("n", "<C-S>", "<Cmd>sa<CR>", opts, { desc = "Save All Buff" })
-- Terminal
-- NOTE: Terminal keymap are in plugins.toggleterm

-- comments
map("n", "<leader>t", "<Cmd>TodoQuickFix<CR>", { desc = "Toggle TODO" })
vim.keymap.set("n", "]t", function()
	require("todo-comments").jump_next()
end, { desc = "Next todo comment" })

vim.keymap.set("n", "[t", function()
	require("todo-comments").jump_prev()
end, { desc = "Previous todo comment" })
-- Windows's
map("n", "<C-k>", "<Cmd>wincmd k<CR>", opts, { desc = "Windows Move Up" })
map("n", "<C-j>", "<Cmd>wincmd j<CR>", opts, { desc = "Windows Move Down" })
map("n", "<C-h>", "<Cmd>wincmd h<CR>", opts, { desc = "Windows Move Left" })
map("n", "<C-l>", "<Cmd>wincmd l<CR>", opts, { desc = "Windows Move Right" })
map("n", "<leader>wv", "<Cmd>vsplit<CR>", opts, { desc = "Vertical Split" })
map("n", "<leader>wh", "<Cmd>split<CR>", opts, { desc = "Horizontal Split" })
map("n", "<leader>wq", "<Cmd>q<CR>", opts, { desc = "Windows quit" })
-- buffers
map("n", "<leader>bd", "<Cmd>bdelete<CR>", opts, { desc = "Delete Current Buff" })
map("n", "<leader>bD", "<Cmd>BufferLineCloseOthers<CR>", opts, { desc = "Delete Other's Buff" })
map("n", "<S-l>", "<Cmd>BufferLineCycleNext<CR>", opts, { desc = "Go Next Buff" })
map("n", "<S-h>", "<Cmd>BufferLineCyclePrev<CR>", opts, { desc = "Go Previous Buff" })
-- diagnostic
map("n", "<leader>cD", function()
	vim.diagnostic.hide()
end, { desc = "hide diagnostic" })
map("n", "<leader>cd", function()
	vim.diagnostic.show()
end, { desc = "show diagnostic" })
-- Neotree
map("n", "<leader>fe", "<Cmd>Neotree<CR>", opts, { desc = "Neotree Explore (root dir)" })
map("n", "<leader>ff", "<Cmd>Neotree focus<CR>", opts, { desc = "Neotree focus" })
map("n", "<leader>fc", "<Cmd>Neotree close<CR>", opts, { desc = "Neotree close" })
-- Telescope
map("n", "<leader>ft", "<Cmd>Telescope<CR>", opts, { desc = "Open Telescope" })
map("n", "<leader>ftf", "<Cmd>Telescope find_files<CR>", opts, { desc = "Telescope find_files" })
map("n", "<leader>ftg", "<Cmd>Telescope live_grep<CR>", opts, { desc = "Telescope live_grep" })

-- ---- LSP config ---- --
-- @param desc (string|nil)
map("n", "<leader>cm", "<Cmd>Mason<CR>", opts, { desc = "MasonUI" })
map("n", "<leader>ci", "<Cmd>LspInfo<CR>", opts, { desc = "LspInfo" })
map("n", "<leader>cl", "<Cmd>LspLog<CR>", opts, { desc = "LspLog" })

-- ---- Trouble ---- ---
map("n", "<leader>xx", function()
	require("trouble").toggle()
end)
map("n", "<leader>xw", function()
	require("trouble").toggle("workspace_diagnostics")
end)
map("n", "<leader>xd", function()
	require("trouble").toggle("document_diagnostics")
end)
map("n", "<leader>xq", function()
	require("trouble").toggle("quickfix")
end)
map("n", "<leader>xl", function()
	require("trouble").toggle("loclist")
end)
map("n", "gR", function()
	require("trouble").toggle("lsp_references")
end)

-- --- DAP --- ---
map("n", "<leader>dD", function()
	require("dapui").open()
end, { desc = "Open DAP-UI" })
map("n", "<leader>dc", function()
	require("dapui").close()
end, { desc = "Close DAP-UI" })
