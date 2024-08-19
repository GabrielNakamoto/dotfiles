local g = vim.g
local set = vim.keymap.set
local ns = { noremap = true, silent = true }

g.mapleader = " "
-- set("i", "<leader>o", "<Esc>la", ns)
set("i", "jk", "<Esc>", ns)
set("v", "jk", "<Esc>", ns)

set("n", "<leader>z", ":Maximize<CR>", ns)

-- FuzzyFinding
-- set("n", "<leader>ff", ":Files<cr>", ns)
-- set("n", "<leader>nw", ":vsplit<CR>:Files<CR>", ns)
-- set("n", "<leader>fl", ":Lines<cr>", ns)
-- set("n", "<leader>ch", ":History:<cr>", ns)
-- set("n", "<leader>gc", ":vsplit<CR><C-w>|:Commits<CR>", ns)

set("n", "<leader>rain", ":CellularAutomaton make_it_rain<CR>", ns)

set("x", "<leader>p", [["_dP]], ns)
set("n", "<leader>e", ":wq!<CR>", ns)
set("n", "<leader>q", ":q!<CR>", ns)
set("n", "<leader>s", ":w<CR>", ns)
-- set("i", "<C-o>", "<Esc>la", ns)
set("i", "<C-Space>", "<Right>", ns)

set({"n", "v"}, "<leader>y", [["+y]])
set("v", "J", ":m '>+1<cr>gv=gv")
set("v", "K", ":m '<-2<cr>gv=gv")

-- set("n", "<C-j>", "<C-W>j")
-- set("n", "<C-k>", "<C-W>k")
-- set("n", "<C-h>", "<C-W>h")
-- set("n", "<C-l>", "<C-W>l")
--
set("n", "<C-u>", "<C-u>zz", ns)
set("n", "<C-d>", "<C-d>zz", ns)

set("n", "<leader>c", [[:%s/\<<C-r><C-w>\>//gI<Left><Left><Left>]])

set("i", "<C-u>", "<Esc>u")
set("n", "<CR>", "o")

set("n", "<C-CR>", "O")



vim.api.nvim_create_autocmd("WinNew", {
  pattern = "*",
  command = "wincmd p"
})
