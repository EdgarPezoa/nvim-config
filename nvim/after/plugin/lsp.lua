local status, lsp = pcall(require, "lsp-zero")
if not status then
	return
end

require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = { "eslint", "lua_ls", "tsserver" },
	handlers = {
		lsp.default_setup,
	},
})

local cmp = require("cmp")
local cmp_action = require("lsp-zero").cmp_action()
local cmp_config = lsp.defaults.cmp_config({
	mapping = cmp.mapping.preset.insert({
		["<CR>"] = cmp.mapping.confirm({ select = true }),
		["<C-f>"] = cmp_action.luasnip_jump_forward(),
		["<C-b>"] = cmp_action.luasnip_jump_backward(),
		["<C-u>"] = cmp.mapping.scroll_docs(-4),
		["<C-d>"] = cmp.mapping.scroll_docs(4),
	}),
})

cmp.setup(cmp_config)

lsp.on_attach(function(_, bufnr)
	local opts = { buffer = bufnr, remap = false }

	vim.keymap.set("n", "gd", function()
		vim.lsp.buf.definition()
	end, opts)
	vim.keymap.set("n", "K", function()
		vim.lsp.buf.hover()
	end, opts)
	vim.keymap.set("n", "<leader>vws", function()
		vim.lsp.buf.workspace_symbol()
	end, opts)
	vim.keymap.set("n", "<leader>vd", function()
		vim.diagnostic.open_float()
	end, opts)
	vim.keymap.set("n", "[d", function()
		vim.diagnostic.goto_next()
	end, opts)
	vim.keymap.set("n", "]d", function()
		vim.diagnostic.goto_prev()
	end, opts)
	vim.keymap.set("n", "<leader>vla", function()
		vim.lsp.buf.code_action()
	end, opts)
	vim.keymap.set("n", "<leader>vlr", function()
		vim.lsp.buf.references()
	end, opts)
	vim.keymap.set("n", "<leader>vln", function()
		vim.lsp.buf.rename()
	end, opts)
end)

vim.diagnostic.config({
	virtual_text = true,
})
