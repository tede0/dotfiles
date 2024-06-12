require "nvchad.mappings"

local map = vim.keymap.set

map("n", "<leader>tt", ":ToggleTerm<CR>", { desc = "Toggle terminal" })
map("t", "<C-q>", "<cmd>close<CR>", { desc = "Close terminal" })

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map("n", "<leader>sd", "<cmd>lua vim.lsp.buf.hover()<CR>", { noremap = true, silent = true })

-- Harpoon
local harpoon = require "harpoon"

map("n", "<leader>ha", function()
  harpoon:list():add()
end, { desc = "Harpoon Add" })
map("n", "<leader>ht", function()
  harpoon.ui:toggle_quick_menu(harpoon:list())
end, { desc = "Harpoon Toggle" })
map("n", "<C-t>1", function()
  harpoon:list():select(1)
end, { desc = "Harpoon Select 1" })
map("n", "<C-t>2", function()
  harpoon:list():select(2)
end, { desc = "Harpoon Select 2" })
map("n", "<C-t>3", function()
  harpoon:list():select(3)
end, { desc = "Harpoon Select 3" })
map("n", "<C-t>4", function()
  harpoon:list():select(4)
end, { desc = "Harpoon Select 4" })
map("n", "<C-t>5", function()
  harpoon:list():select(5)
end, { desc = "Harpoon Select 5" })

map("n", "x", '"_x', { desc = "Delete without yanking" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
