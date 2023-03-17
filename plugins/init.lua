local overrides = require "custom.plugins.overrides"

---@type {[PluginName]: NvPluginConfig|false}
local plugins = {

  ["goolord/alpha-nvim"] = {
    after = "base46",
    disable = false,
    override_options = overrides.alpha
  },

  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },

  ["nvim-treesitter/nvim-treesitter"] = {
    override_options = overrides.treesitter,
  },

  ["williamboman/mason.nvim"] = {
    override_options = overrides.mason,
  },

  ["nvim-tree/nvim-tree.lua"] = {
    override_options = overrides.nvimtree,
  },

  ["nvim-telescope/telescope.nvim"] = {
    override_options = overrides.telescope,
  },

  ["wakatime/vim-wakatime"] = {},

  ["windwp/nvim-autopairs"] = {
    config = function ()
      require("plugins.configs.others").autopairs()
      require "custom.plugins.autopairs"
    end
  },

    ["Darazaki/indent-o-matic"] = {
    config = function ()
      require "custom.plugins.indent-o-matic"
    end
  }
}

return plugins
