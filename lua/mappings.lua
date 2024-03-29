require "nvchad.mappings"

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("n", "ff", ":Telescope find_files hidden=true<CR>", { desc = "open Telescope" })
map("n", "fg", ":Telescope live_grep<CR>", { desc = "Telescope live grep" })
map("n", "qq", ":q<CR>", { desc = "quit" })
map("n", "q!", ":q!<CR>", { desc = "force quit" })
map("n", "tr", ":NvimTreeToggle<CR>", { desc = "nvim tree" })
map("n", "<C-x>", ":bdelete!<CR>", { desc = "delete buffer" })
