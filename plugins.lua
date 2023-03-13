local overrides = require("custom.configs.overrides")

---@type NvPluginSpec[]
local plugins = {
  -- {
    -- "goolord/alpha-nvim",
    -- after = "base46",
    -- disable = false,
    -- override_options = overrides.alpha
  -- },

  {
    "NvChad/ui",
    opts = overrides.ui
  },

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
    otps = overrides.telescope,
  },

  {
    "wakatime/vim-wakatime"
  },

  {
    "windwp/nvim-autopairs",
    opts = function ()
      -- require "custom.configs.autopairs"
    end
  },

  {
    "Darazaki/indent-o-matic",
    config = function ()
      require "custom.configs.indent-o-matic"
    end
  }
}

return plugins
