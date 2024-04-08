local status, ibl = pcall(require, "ibl")
if not status then
    return
end

vim.opt.list = true
vim.opt.listchars = { eol = "¶", space = "·", tab = ">." }

local highlight = {
    "CodingMindsRed",
    "CodingMindsBlue",
    "CodingMindsYellow",
}

local hooks = require("ibl.hooks")

hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
    vim.api.nvim_set_hl(0, "CodingMindsRed", { fg = "#F3747B" })
    vim.api.nvim_set_hl(0, "CodingMindsBlue", { fg = "#6DB5EF" })
    vim.api.nvim_set_hl(0, "CodingMindsYellow", { fg = "#F5CE81" })
end)

ibl.setup({
    indent = { highlight = highlight },
})
