-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local set = vim.keymap.set
local del = vim.keymap.del

--Deleted keymaps
del("n", "<C-h>")
del("n", "<C-j>")
del("n", "<C-k>")
del("n", "<C-l>")

-- Create line spaces
set("n", "<leader>o", "o<esc>")
set("n", "<leader>O", "O<esc>")

-- Move code line
set("v", "J", ":m '>+1<CR>gv=gv")
set("v", "K", ":m '<-2<CR>gv=gv")

-- Move half page and set cursor in middle
set("n", "<C-d>", "<C-d>zz")
set("n", "<C-u>", "<C-u>zz")

-- Search and put cursor on mid
set("n", "n", "nzzzv")
set("n", "N", "Nzzzv")

-- Delete without save
set("n", "x", '"_x')
set("n", "dd", '"_dd')
set("v", "d", '"_d')
set("v", "p", '"_dP')

-- Increment/decrement
set("n", "+", "<C-a>")
set("n", "-", "<C-x>")

-- Split window
set("n", "ss", ":vsplit<Return><C-w>w")
set("n", "sp", ":split<Return><C-w>w")
set("n", "sc", ":close<CR>")

-- Move Splited window
set("n", "sr", "<C-w>r")
set("n", "se", "<C-w>x")
set("n", "sH", "<C-w>H")
set("n", "sK", "<C-w>K")
set("n", "sJ", "<C-w>J")
set("n", "sL", "<C-w>L")

-- Move window
set("n", "sh", "<C-w>h")
set("n", "sk", "<C-w>k")
set("n", "sj", "<C-w>j")
set("n", "sl", "<C-w>l")

-- Resize window
set("n", "sa", "<C-w>5<")
set("n", "sd", "<C-w>5>")
set("n", "sw", "<C-w>5+")
set("n", "sx", "<C-w>5-")
set("n", "se", "<C-w>=")

-- Replace in file
set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]]) -- Replace the hightlight key in whole file
set("v", "<leader>s", ":s/") -- Replace the key in whole visual hightlight

set("i", "jk", "<Esc>") -- Exit insert mode with jk
set("v", "f", "<Esc>") -- Exit visual mode with jk
set("n", "dp", "dd") -- Delete with save
set("n", "dw", 'vb"_d') -- Delete a word backwards
set("n", "<C-a>", "gg<S-v>G") -- Select all
set("n", "<C-n>", ":tabedit<CR>") -- New tab
set("n", "Q", "<nop>") -- Replace to nothing remake all recordings
