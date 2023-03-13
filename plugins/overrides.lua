local M = {}

M.treesitter = {
    ensure_installed = {'javascript', 'lua', 'php', 'typescript', 'json', 'css', 'help' },
}

M.mason = {
  ensure_installed = {
    "lua-language-server",
    "intelephense",
    "eslint-lsp",
    "json-lsp",
    "prettier",
    "luaformatter",
    "typescript-language-server",
  },
}

M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

M.telescope = {
  defaults = {
    vimgrep_arguments = {
      "rg",
      "--color=never",
      "--no-heading",
      "--with-filename",
      "--line-number",
      "--column",
      "--smart-case",
      "--trim",
      "--hidden",
      "--no-ignore",
    },
    file_ignore_patterns = { "node_modules", ".git", "vendor" },
    -- mappings = {
    --   i = {
    --     ["<C-j>"] = require("telescope.actions").move_selection_next,
    --     ["<C-k>"] = require("telescope.actions").move_selection_previous,
    --     ["<esc>"] = require("telescope.actions").close,
    --   },
    -- },
  },
}

M.nvdash = {
  header = {
      "   ",
      "   /\\\\\\        /\\\\\\                /\\\\\\                               ",
      "   \\/\\\\\\       \\/\\\\\\               \\/\\\\\\                              ",
      "    \\/\\\\\\       \\/\\\\\\               \\/\\\\\\                             ",
      "     \\/\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\     /\\\\\\\\\\    \\/\\\\\\             /\\\\\\\\\\         ",
      "      \\/\\\\\\/////////\\\\\\   /\\\\\\///\\\\\\  \\/\\\\\\\\\\\\\\\\\\\\    /\\\\\\///\\\\\\      ",
      "       \\/\\\\\\       \\/\\\\\\  /\\\\\\  \\//\\\\\\ \\/\\\\\\/////\\\\\\  /\\\\\\  \\//\\\\\\    ",
      "        \\/\\\\\\       \\/\\\\\\ \\//\\\\\\  /\\\\\\  \\/\\\\\\   \\/\\\\\\ \\//\\\\\\  /\\\\\\    ",
      "         \\/\\\\\\       \\/\\\\\\  \\///\\\\\\\\\\/   \\/\\\\\\   \\/\\\\\\  \\///\\\\\\\\\\/    ",
      "          \\///        \\///     \\/////     \\///    \\///     \\/////     ",
      "   ",
  },
}

return M
