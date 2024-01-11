local status, null_ls = pcall(require, "null-ls")
if not status then
	return
end

null_ls.setup({
	sources = {
        null_ls.builtins.formatting.eslint_d,
		null_ls.builtins.formatting.prettierd.with({
			condition = function(utils)
				return utils.has_file({ ".prettierrc" })
			end,
		}),
		null_ls.builtins.formatting.stylua,
		null_ls.builtins.formatting.clang_format,
		null_ls.builtins.diagnostics.cpplint,

		null_ls.builtins.diagnostics.pylint,
	},
	on_attach = function()
		vim.api.nvim_create_autocmd("BufWritePost", {
			callback = function()
				vim.lsp.buf.format()
			end,
		})
	end,
})
