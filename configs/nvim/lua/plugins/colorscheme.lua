local base = {
  red = "#ff657a",
  maroon = "#F29BA7",
  peach = "#ff9b5e",
  yellow = "#eccc81",
  green = "#a8be81",
  teal = "#9cd1bb",
  sky = "#A6C9E5",
  sapphire = "#86AACC",
  blue = "#5d81ab",
  lavender = "#66729C",
  mauve = "#b18eab",
}

local extend_base = function(value)
  return vim.tbl_extend("force", base, value)
end

return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    require("catppuccin").setup({
      no_italic = false, -- Force no italic
      no_bold = false, -- Force no bold
      no_underline = false, -- Force no underline
      integrations = {
        aerial = true,
        alpha = true,
        cmp = true,
        dashboard = true,
        flash = true,
        gitsigns = true,
        headlines = true,
        illuminate = true,
        indent_blankline = { enabled = true },
        leap = true,
        lsp_trouble = true,
        mason = true,
        markdown = true,
        mini = true,
        native_lsp = {
          enabled = true,
          underlines = {
            errors = { "undercurl" },
            hints = { "undercurl" },
            warnings = { "undercurl" },
            information = { "undercurl" },
          },
          -- virtual_text = {
          --   errors = { "italic" },
          --   hints = { "italic" },
          --   warnings = { "italic" },
          --   information = { "italic" },
          -- },
          -- inlay_hints = {
          --   background = true,
          -- },
        },
        navic = { enabled = true, custom_bg = "lualine" },
        neotest = true,
        neotree = true,
        noice = true,
        notify = true,
        semantic_tokens = true,
        telescope = true,
        treesitter = true,
        treesitter_context = true,
        which_key = true,
      },
      transparent_background = true,
      background = {
        dark = "frappe",
        light = "latte",
      },
      styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
        comments = { "italic" }, -- Change the style of comments
        conditionals = { "italic" },
      },
      color_overrides = {
        latte = extend_base({
          text = "#202027",
          subtext1 = "#263168",
          subtext0 = "#4c4f69",
          overlay2 = "#737994",
          overlay1 = "#838ba7",
          base = "#fcfcfa",
          mantle = "#EAEDF3",
          crust = "#DCE0E8",
          pink = "#EA7A95",
          mauve = "#986794",
          red = "#EC5E66",
          peach = "#FF8459",
          yellow = "#CAA75E",
          green = "#87A35E",
        }),
        frappe = extend_base({
          text = "#fcfcfa",
          surface2 = "#535763",
          surface1 = "#3a3d4b",
          surface0 = "#30303b",
          base = "#202027",
          mantle = "#1c1d22",
          crust = "#171719",
        }),
      },
    }),
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    lazy = false,
    {
      "LazyVim/LazyVim",
      opts = {
        colorscheme = "catppuccin-frappe",
      },
    },
  },
  -- {
  --   "craftzdog/solarized-osaka.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   opts = {},
  -- },
  -- {
  --   "LazyVim/LazyVim",
  --   opts = {
  --     colorscheme = "solarized-osaka",
  --   },
  -- },
}
