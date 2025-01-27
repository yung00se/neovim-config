return {
	"nvim-neo-tree/neo-tree.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- optional, for file icons
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require("neo-tree").setup({
			close_if_last_window = true,
			enable_git_status = true,
			enable_diagnostics = true,
			window = {
				width = 25,
			},
		})
		vim.cmd([[autocmd VimEnter * Neotree show]])
		vim.keymap.set("n", "<C-e>", ":Neotree toggle<CR>", { noremap = true, silent = true })
		vim.keymap.set("t", "<C-e>", "<C-\\><C-n>:Neotree toggle<CR>", { noremap = true, silent = true })
		vim.keymap.set("v", "<C-e>", "v:Neotree toggle<CR>", { noremap = true, silent = true })
	end,
}
