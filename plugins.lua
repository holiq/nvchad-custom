local overrides = require "custom.configs.overrides"

---@type NvPluginSpec[]
local plugins = {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          require "custom.configs.null-ls"
        end,
      },
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },

  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },

  {
    "williamboman/mason.nvim",
    opts = overrides.mason,
  },

  {
    "nvim-telescope/telescope.nvim",
    opts = overrides.telescope,
  },

  {
    "wakatime/vim-wakatime",
    lazy = false,
  },

  {
    "Darazaki/indent-o-matic",
    lazy = false,
    config = function()
      require "custom.configs.indent-o-matic"
    end,
  },

  {
    "abecodes/tabout.nvim",
    lazy = false,
    config = function()
      require "custom.configs.tabout"
    end,
  },
  {
    "akinsho/toggleterm.nvim",
    lazy = false,
    config = true
  },
}

return plugins
