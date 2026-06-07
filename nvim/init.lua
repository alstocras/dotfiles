-- Set leaders
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Bootstrap lazy
require("config.lazy")

-- Let VimTeX handle LaTeX the old-fashioned way (it's more stable)
vim.g.vimtex_syntax_enabled = 1
vim.g.tex_flavor = "latex"
