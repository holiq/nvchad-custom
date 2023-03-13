local M = {}

M.treesitter = {
  ensure_installed = {
    "lua",
    "javascript",
    "typescript",
    "json",
    "php",
  },
}

M.mason = {
  ensure_installed = {
    "lua-language-server",
    "stylua",
    "intelephense",
    "typescript-language-server",
    "deno",
  },
}

-- git support in nvimtree
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
    mappings = {
      i = {
        ["<C-j>"] = require("telescope.actions").move_selection_next,
        ["<C-k>"] = require("telescope.actions").move_selection_previous,
        ["<esc>"] = require("telescope.actions").close,
      },
    },
  },
}

M.ui = {
  nvdash = {
    load_on_startup = true,

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
  },
}


return M
