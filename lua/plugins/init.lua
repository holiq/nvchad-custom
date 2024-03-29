local overrides = require "configs.overrides"

return {
  {
    "stevearc/conform.nvim",
    config = function()
      require "configs.conform"
    end,
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require('nvchad.configs.lspconfig').defaults()
      require "configs.lspconfig"
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
      require "configs.indent-o-matic"
    end,
  },

  {
    "abecodes/tabout.nvim",
    lazy = false,
    config = function()
      require "configs.tabout"
    end,
  },
  {
    "akinsho/toggleterm.nvim",
    lazy = false,
    config = true
  },
}
