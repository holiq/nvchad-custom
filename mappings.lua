---@type MappingsConfig
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["ff"] = { ":Telescope find_files hidden=true<CR>", "open Telescope" },
    ["fg"] = { ":Telescope live_grep<CR>", "Telescope live grep" },
    ["qq"] = { ":q<CR>", "quit" },
    ["q!"] = { ":q!<CR>", "force quit" },
    ["tr"] = { ":NvimTreeToggle<CR>", "nvim tree" },
    ["<C-x>"] = { ":bdelete!<CR>", "delete buffer" },
  },
}

-- more keybinds!

return M
