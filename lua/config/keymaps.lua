local opts = { noremap = true }


-- vim file explore
vim.keymap.set("n", "<leader>e", "<Cmd>:Ex<CR>", { desc = "File Explore" })
vim.keymap.set("n", "<leader>E", "<Cmd>:25Lex<CR>", { desc = "Side File Exploler" })

-- Navigation: Moving line
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv") -- Move current line down
vim.keymap.set("v", "K", ":m '>-2<CR>gv=gv")
-- use "gw" to warp line

--Neotree
vim.keymap.set("n", "<leader>fc", "<Cmd>:Neotree close<CR>", { desc = "Neotree File close" })
vim.keymap.set("n", "<leader>fe", "<Cmd>:Neotree<CR>", { desc = "Neotree File Ex" })

--windows
vim.keymap.set("n", "<C-m>", "<Cmd>:Mason<CR>", opts, { desc = "Mason" })
vim.keymap.set("n", "<C-k>", "<Cmd>wincmd k<CR>", opts, { desc = "Windows Move Up" })
vim.keymap.set("n", "<C-j>", "<Cmd>wincmd j<CR>", opts, { desc = "Windows Move Down" })
vim.keymap.set("n", "<C-h>", "<Cmd>wincmd h<CR>", opts, { desc = "Windows Move Left" })
vim.keymap.set("n", "<C-l>", "<Cmd>wincmd l<CR>", opts, { desc = "Windows Move Right" })
vim.keymap.set("n", "<leader>wv", "<Cmd>vsplit<CR>", opts, { desc = "Vertical Split" })
vim.keymap.set("n", "<leader>wh", "<Cmd>split<CR>", opts, { desc = "Horizontal Split" })
vim.keymap.set("n", "<leader>wq", "<Cmd>q<CR>", opts, { desc = "Windows quit" })

--Telescope
vim.keymap.set("n", "<leader>ff", "<Cmd>:Telescope find_files<CR>", { desc = "Find File DIR" })
vim.keymap.set("n", "<leader>t", "<Cmd>:Telescope<CR>", { desc = "Telescope" })
vim.keymap.set("n", "<leader>b", "<Cmd>:Telescope buffers<CR>", { desc = "Lists buffer with Telescope" })
vim.keymap.set("n", "<leader>fg", "<Cmd>:Telescope live_grep<CR>", { desc = "live_greb with Telescope" })
vim.keymap.set("n", "<leader>fh", "<Cmd>:Telescope help_tags<CR>", { desc = " Lists help with Telescope" })
