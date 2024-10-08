return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    require("toggleterm").setup({
      -- size can be a number or function which is passed the current terminal
      size = 10,
      open_mapping = [[<C-\>]],
      hide_numbers = true,      -- hide the number column in toggleterm buffers
      autochdir = false,        -- when neovim changes it current directory the terminal will change it's own when next it's opened
      shade_terminals = true,   -- this option takes priority over highlights specified so if you specify Normal highlights you should set this to false
      shading_factor = "2",     -- the percentage by which to lighten terminal background, default: -30 (gets multiplied by -3 if background is light)
      start_in_insert = true,
      insert_mappings = true,   -- whether or not the open mapping applies in insert mode
      terminal_mappings = true, -- whether or not the open mapping applies in the opened terminals
      persist_size = true,
      persist_mode = true,      -- if set to true (default) the previous terminal mode will be remembered
      direction = "horizontal", --'vertical' | 'horizontal' | 'tab' | 'float',
      close_on_exit = true,     -- close the terminal window when the process exits
      -- Change the default shell. Can be a string or a function returning a string
      shell = vim.o.shell,
      auto_scroll = true, -- automatically scroll to the bottom on terminal output
      -- This field is only relevant if direction is set to 'float'
      float_opts = {
        -- The border key is *almost* the same as 'nvim_open_win'
        -- see :h nvim_open_win for details on borders however
        -- the 'curved' border is a custom border type
        -- not natively supported but implemented in this plugin.
        border = "curved", --'single' | 'double' | 'shadow' | 'curved' | --other options supported by win open
        -- like `size`, width and height can be a number or function which is passed the current terminal
        width = 55,
        height = 20,
        winblend = 3,
        zindex = 1,
      },
    })
    function _G.set_terminal_keymaps()
      local opts = { buffer = 0 }
      vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], opts)
      vim.keymap.set("t", "jk", [[<C-\><C-n>]], opts)
      vim.keymap.set("t", "<C-h>", [[<Cmd>wincmd h<CR>]], opts)
      vim.keymap.set("t", "<C-j>", [[<Cmd>wincmd j<CR>]], opts)
      vim.keymap.set("t", "<C-k>", [[<Cmd>wincmd k<CR>]], opts)
      vim.keymap.set("t", "<C-l>", [[<Cmd>wincmd l<CR>]], opts)
      vim.keymap.set("t", "<C-w>", [[<C-\><C-n><C-w>]], opts)
    end

    -- if you only want these mappings for toggle term use term://*toggleterm#* instead
    vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")
  end,
}
