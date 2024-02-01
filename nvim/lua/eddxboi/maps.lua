local keymap = vim.keymap
vim.g.mapleader = " "

-- Create line spaces
keymap.set("n", "<leader>o", "o<esc>")
keymap.set("n", "<leader>O", "O<esc>")

-- Move code
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Move half page and set cursor in middle
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")

-- Search and put cursor on mid
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")

-- Delete without save
keymap.set("n", "x", '"_x')
keymap.set("n", "dd", '"_dd')

-- Increment/decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Split window
keymap.set("n", "ss", ":vsplit<Return><C-w>w")
keymap.set("n", "sp", ":split<Return><C-w>w")
keymap.set("n", "sc", ":close<CR>")

-- Move Splited window
keymap.set("", "sr", "<C-w>r")
keymap.set("", "se", "<C-w>x")
keymap.set("", "sH", "<C-w>H")
keymap.set("", "sK", "<C-w>K")
keymap.set("", "sJ", "<C-w>J")
keymap.set("", "sL", "<C-w>L")

-- Move window
keymap.set("", "sh", "<C-w>h")
keymap.set("", "sk", "<C-w>k")
keymap.set("", "sj", "<C-w>j")
keymap.set("", "sl", "<C-w>l")

-- Resize window
keymap.set("n", "sa", "<C-w>5<")
keymap.set("n", "sd", "<C-w>5>")
keymap.set("n", "sw", "<C-w>5+")
keymap.set("n", "sx", "<C-w>5-")
keymap.set("n", "se", "<C-w>=")

-- Replace in file
keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]]) -- Replace the hightlight key in whole file
keymap.set("v", "<leader>s", ":s/") -- Replace the key in whole visual hightlight

-- Plugins
vim.keymap.set("n", "<leader>do", ":DiffviewOpen<CR>") -- Opens Git diff view
vim.keymap.set("n", "<leader>dc", ":DiffviewClose<CR>") -- Opens Git diff view

keymap.set("i", "jk", "<Esc>") -- Exit insert mode with jk
keymap.set("v", "f", "<Esc>") -- Exit visual mode with jk
keymap.set("n", "dp", "dd") -- Delete with save
keymap.set("n", "dw", 'vb"_d') -- Delete a word backwards
keymap.set("n", "<C-a>", "gg<S-v>G") -- Select all
keymap.set("n", "<C-n>", ":tabedit<CR>") -- New tab
keymap.set("x", "<leader>p", [["_dP]]) -- Replace hightlight text without save in clipboard
keymap.set("n", "<leader>yp", "{vy}") -- yank paragraph in normal mode
keymap.set("n", "Q", "<nop>") -- Replace to nothing remake all recordings
