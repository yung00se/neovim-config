-- Set leader key
vim.g.mapleader = " "
vim.opt.number = true
vim.opt.relativenumber = false
vim.opt.clipboard = "unnamedplus"
vim.opt.tabstop = 2 -- Number of spaces a <Tab> counts for
vim.opt.shiftwidth = 2 -- Number of spaces for auto-indentation
vim.opt.expandtab = true -- Convert tabs to spaces

-- switch to normal mode when in insert mode or visual mode or terminal mode
vim.keymap.set("i", "jk", "<Esc>", { noremap = true, silent = true })
vim.keymap.set("v", "jk", "<Esc>", { noremap = true, silent = true })
vim.keymap.set("t", "jk", "<C-\\><C-n>", { noremap = true, silent = true })

-- shift block of text left, right, up or down in visual mode
vim.keymap.set("v", "<", "<gv", { noremap = true, silent = true })
vim.keymap.set("v", ">", ">gv", { noremap = true, silent = true })
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- ease switching between terminal and other windows when in terminal insert mode
vim.keymap.set("t", "<C-k>", "<C-\\><C-n><C-w>k", { noremap = true, silent = true })
vim.keymap.set("t", "<C-h>", "<C-\\><C-n><C-w>h", { noremap = true, silent = true })

-- terminal opening and closing
vim.keymap.set("n", "<C-t>", ":belowright 10split | term <CR><C-j>iclear<CR>", { noremap = true, silent = true })
-- Keymap to close the terminal
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>:q<CR>", { noremap = true, silent = true })

-- navigate between windows
vim.keymap.set("n", "<C-h>", "<C-w>h", { noremap = true, silent = true })
vim.keymap.set("n", "<C-j>", "<C-w>j", { noremap = true, silent = true })
vim.keymap.set("n", "<C-k>", "<C-w>k", { noremap = true, silent = true })
vim.keymap.set("n", "<C-l>", "<C-w>l", { noremap = true, silent = true })

-- select all text shortcut
vim.keymap.set("n", "<C-a>", "ggVG<CR>", { noremap = true, silent = true })

-- Load lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

-- Setup plugins
require("lazy").setup("plugins")
