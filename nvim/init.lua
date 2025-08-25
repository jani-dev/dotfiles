-- Theme & Background
vim.cmd.colorscheme("unokai")
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "none" })

-- Lines
vim.o.number = true
vim.o.relativenumber = true

-- Indentation
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4

-- Behavior
vim.o.clipboard = "unnamedplus"
