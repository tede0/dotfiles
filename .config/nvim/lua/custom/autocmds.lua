-- Create a group for your custom autocommands
local my_auto_group = vim.api.nvim_create_augroup("MyAutoCmds", { clear = true })

-- Example autocommand: Automatically source the init.lua file when saved
vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = "init.lua",
  command = "source <afile>",
  group = my_auto_group,
})

-- Example autocommand: Highlight yanked text for a short duration
vim.api.nvim_create_autocmd("TextYankPost", {
  callback = function()
    vim.highlight.on_yank { higroup = "IncSearch", timeout = 200 }
  end,
  group = my_auto_group,
})

-- Example autocommand: Remove trailing whitespace on save
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  command = [[%s/\s\+$//e]],
  group = my_auto_group,
})
