return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.2", -- Use a stable version
	dependencies = { "nvim-lua/plenary.nvim" }, -- Telescope depends on plenary.nvim
	config = function()
		require("telescope").setup({
			defaults = {
				file_ignore_patterns = { "node_modules", ".git" },
			},
		})
		-- Optional: Keybinding to open Telescope
		local builtin = require("telescope.builtin")
		vim.keymap.set("n", "<leader>f", builtin.find_files, { desc = "Find Files", silent = true, noremap = true })
		vim.keymap.set("n", "<leader>g", builtin.live_grep, {})
	end,
}
