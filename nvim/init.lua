-- Set leaders
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Bootstrap lazy
require("config.lazy")

-- Let VimTeX handle LaTeX the old-fashioned way (it's more stable)
vim.g.vimtex_syntax_enabled = 1
vim.g.tex_flavor = "latex"

vim.keymap.set("n", "<Esc><Esc>", "<cmd>nohlsearch<CR>")

-- Save, compile, and run using the parent folder name as the binary name
vim.keymap.set("n", "<leader>m", function()
  vim.cmd("w") -- Save active file buffer

  -- 1. Grab the current working directory path (e.g., "/home/user/projects/my_raylib_game")
  local cwd = vim.fn.getcwd()

  -- 2. Extract just the last folder name from that path (e.g., "my_raylib_game")
  local project_name = vim.fn.fnamemodify(cwd, ":t")

  -- 3. Construct and run the command dynamically
  local run_cmd = string.format("split | terminal cmake --build build && ./build/%s", project_name)
  vim.cmd(run_cmd)
end, { desc = "Build and Run CMake Project Dynamically" })

vim.keymap.set("n", "<leader>n", function()
  vim.cmd("vsplit | terminal mkdir build && cd build && cmake -G 'Unix Makefiles' .. && cd ..")
end, { desc = "make cmake thingy" })
