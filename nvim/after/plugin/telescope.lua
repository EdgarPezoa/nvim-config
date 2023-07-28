local status, telescope = pcall(require, "telescope")
if (not status) then return end
local actions = require('telescope.actions')
local builtin = require("telescope.builtin")

require("telescope").setup {
    defaults = {
        file_ignore_patterns = {".git"}
    },
  extensions = {
    defaults = {
        layout_strategy = 'horizontal',
        layout_config = { height = .95 },
        mappings = {
          n = {
            ["q"] = actions.close
          },
        },
    },
    file_browser = {
        layout_strategy = 'horizontal',
        layout_config = { height = 0.90, width = 0.75 },
        theme = "dropdown",
        hijack_netrw = true,
        mappings = {
            ["i"] = {},
            ["n"] = {},
      },
    },
  },
}

telescope.load_extension "file_browser"

vim.keymap.set('n', '<leader>ff',
  function()
    builtin.find_files({
      no_ignore = false,
      hidden = true,
    })
end)
vim.keymap.set("n", "<leader>fj", function()
  telescope.extensions.file_browser.file_browser({
    path = "%:p:h",
    respect_gitignore = false,
    hidden = true,
    grouped = true,
    previewer = false,
    initial_mode = "normal",
  })
end)
vim.keymap.set("n", "<leader>fa", function()
  telescope.extensions.file_browser.file_browser({
    respect_gitignore = false,
    hidden = true,
    grouped = true,
    initial_mode = "normal",
  })
end)

vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
