-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
vim.keymap.set("n", "<leader>pr", function()
  local sketch_dir = vim.fn.expand("%:p:h")
  -- Saves file and runs it via the CLI
  vim.cmd("silent! write")
  vim.fn.jobstart("processing-java --sketch=" .. sketch_dir .. " --run", { detach = true })
end, { desc = "Run Processing Sketch" })
