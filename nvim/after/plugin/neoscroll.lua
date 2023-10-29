local status, neoscroll = pcall(require, "neoscroll")
if (not status) then return end

local config = require("neoscroll.config")

neoscroll.setup({
    mappings = {'<C-u>', '<C-d>', '<C-b>', '<C-f>',
                '<C-y>', '<C-e>', 'zt', 'zz', 'zb'},
    hide_cursor = true,          -- Hide cursor while scrolling
    stop_eof = true,             -- Stop at <EOF> when scrolling downwards
    respect_scrolloff = false,   -- Stop scrolling when the cursor reaches the scrolloff margin of the file
    cursor_scrolls_alone = true, -- The cursor will keep on scrolling even if the window cannot scroll further
    easing_function = nil,       -- Default easing function
    pre_hook = nil,              -- Function to run before the scrolling animation starts
    post_hook = nil,             -- Function to run after the scrolling animation ends
    performance_mode = false,    -- Disable "Performance Mode" on all buffers.
})

local t = {}
t['<C-u>'] = {'scroll', {'-vim.wo.scroll', 'true', '30'}}
t['<C-d>'] = {'scroll', { 'vim.wo.scroll', 'true', '30'}}

config.set_mappings(t)
