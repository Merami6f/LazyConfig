return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      flavour = "frappe", -- latte, frappe, macchiato, mocha
      background = {      -- :h background
        light = "latte",
        dark = "mocha",
      },
      transparent_background = true, -- disables setting the background color.
      show_end_of_buffer = false,    -- shows the '~' characters after the end of buffers
      term_colors = true,            -- sets terminal colors (e.g. `g:terminal_color_0`)
      dim_inactive = {
        enabled = false,             -- dims the background color of inactive window
        shade = "dark",
        percentage = 0.15,           -- percentage of the shade to apply to the inactive window
      },
      no_italic = false,             -- Force no italic
      no_bold = false,               -- Force no bold
      no_underline = false,          -- Force no underline
      styles = {                     -- Handles the styles of general hi groups (see `:h highlight-args`):
        comments = {},               -- Change the style of comments
        conditionals = {},
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
        -- miscs = {}, -- Uncomment to turn off hard-coded styles
      },
      color_overrides = {
        mocha = {
          rosewater = "#ffc0b9",
          flamingo = "#ed1f7c",
          pink = "#f5aba3",
          mauve = "#1900ff",
          red = "#ff0000",
          maroon = "#ff8595",
          peach = "#ff8408",
          yellow = "#ffe081",
          green = "#08ff41",
          teal = "#47deb4",
          sky = "#00d5ed",
          sapphire = "#00dfce",
          blue = "#478df5",
          lavender = "#ffffff",
          text = "#cccccc",
          subtext1 = "#bbbbbb",
          subtext0 = "#aaaaaa",
          overlay2 = "#999999",
          overlay1 = "#888888",
          overlay0 = "#777777",
          surface2 = "#666666",
          surface1 = "#555555",
          surface0 = "#444444",
          base = "#202020",
          mantle = "#222222",
          crust = "#333333",
        },
        -- Carburetor Cool
        macchiato = {
          rosewater = "#ffd7d9",
          flamingo = "#ffb3b8",
          pink = "#ff7eb6",
          red = "#fa4d56",
          maroon = "#ff8389",
          peach = "#ff832b",
          yellow = "#fddc69",
          green = "#42be65",
          teal = "#3ddbd9",
          sky = "#82cfff",
          sapphire = "#78a9ff",
          blue = "#4589ff",
          lavender = "#be95ff",
          mauve = "#d4bbff",
          text = "#f2f4f8",
          subtext1 = "#dde1E6",
          subtext0 = "#c1c7cd",
          overlay2 = "#a2a9b0",
          overlay1 = "#878d96",
          overlay0 = "#697077",
          surface2 = "#4d5358",
          surface1 = "#343a3f",
          surface0 = "#21272a",
          base = "#121619",
          mantle = "#090b0c",
          crust = "#000000"
        },
        -- Carburetor Warm
        frappe = {
          rosewater = "#ffffff",
          flamingo = "#ffffff",
          pink = "#ffffff",
          mauve = "#ffffff",
          red = "#ff0000",
          maroon = "#ffffff",
          peach = "#ffffff",
          yellow = "#ffffff",
          green = "#ffffff",
          teal = "#ffffff",
          sky = "#ffffff",
          sapphire = "#ffffff",
          blue = "#ffffff",
          lavender = "#ffffff",
          text = "#ffffff",
          subtext1 = "#e6e6e6",
          subtext0 = "#c8c8c8",
          overlay2 = "#dddddd",
          overlay1 = "#cccccc",
          overlay0 = "#bbbbbb",
          surface2 = "#565151",
          surface1 = "#3c3838",
          surface0 = "#272525",
          base = "#0f0d0d",
          mantle = "#0b0a0a",
          crust = "#0a0a0a"
        }
      },
      custom_highlights = function(replace)
        return {
          LineNr = { fg = replace.subtext1 },
        }
      end,
      default_integrations = true,
      integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        treesitter = true,
        notify = false,
        mini = {
          enabled = true,
          indentscope_color = "",
        },
        -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
      },
    })

    -- setup must be called before loading
    vim.cmd.colorscheme "catppuccin"
  end
}
