return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				-- lua
				null_ls.builtins.formatting.stylua,

				-- python
				null_ls.builtins.diagnostics.pylint,
				null_ls.builtins.formatting.black,
				null_ls.builtins.formatting.isort,

				-- javascript (add later)
			},
		})

		vim.keymap.set("n", "<C-f>", vim.lsp.buf.format, {})
    vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
    vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
	end,
}
