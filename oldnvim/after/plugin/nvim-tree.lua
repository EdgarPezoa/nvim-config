local status, nvim_tree = pcall(require, "nvim-tree")
if not status then
	return
end

local api = require("nvim-tree.api")

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup({
	sort = {
		sorter = "case_sensitive",
	},
	view = {
		width = 30,
	},
	renderer = {
		group_empty = true,
	},
	filters = {
		dotfiles = false,
	},
})

vim.keymap.set("n", "<leader>fa", function()
	api.tree.toggle()
end)
