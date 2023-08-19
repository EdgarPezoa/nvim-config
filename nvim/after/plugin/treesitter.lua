local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }

require'nvim-treesitter.configs'.setup {
  ensure_installed = {
    "lua",
    "c",
    "markdown",
    "tsx",
    "javascript",
    "typescript",
    "json",
    "yaml",
    "css",
    "html",
  },
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  autotag = {
    enable = true,
    enable_rename = true,
    enable_close = true,
    enable_close_on_slash = true,
    filetypes = { "html" , "xml" },
  }
}
