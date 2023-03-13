local overrides = require "custom.plugins.overrides"

---@type {[PluginName]: NvPluginConfig|false}
local plugins = {

  {"goolord/alpha-nvim",
    after = "base46",
    disable = false,
    opts = overrides.alpha
  },

  {"neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },

  {"nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },

  {"williamboman/mason.nvim",
    opts = overrides.mason,
  },

  {"nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },

  {"nvim-telescope/telescope.nvim",
    opts = overrides.telescope,
  },

  {"wakatime/wakatime.nvim"},

  {"windwp/nvim-autopairs",
    config = function ()
      require("plugins.configs.others").autopairs()
      require "custom.plugins.autopairs"
    end
  },

    {"Darazaki/indent-o-matic",
    config = function ()
      require "custom.plugins.indent-o-matic"
    end
  }
}

return plugins
