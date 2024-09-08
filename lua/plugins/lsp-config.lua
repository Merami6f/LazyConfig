return {
  "neovim/nvim-lspconfig",
  event = "BufEnter",
  dependencies = {
    {
      "williamboman/mason.nvim",
      Lazy = true,
      config = function()
        require("mason").setup({
          -- install via :Mason
          ensure_installed = {},
          automatic_installation = true,
          ui = {
            icons = {
              package_installed = "✓",
              package_pending = "➜",
              package_uninstalled = "✗"
            }
          }
        })
      end
    },
    {
      "williamboman/mason-lspconfig.nvim",
      config = function()
        require("mason-lspconfig").setup()
      end
    },
  },
  config = function()
    local lspconfig = require('lspconfig')
    lspconfig.markdown_oxide.setup {}
    lspconfig.asm_lsp.setup {}
    lspconfig.clangd.setup {}
    lspconfig.lua_ls.setup({
      settings = {
        Lua = {
          diagnostigs = { globals = { "vim", "noremap" },
          },
        },
      }
    })
  end
}
