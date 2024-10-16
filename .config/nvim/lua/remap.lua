require('plugins')

local g = vim.g
local set = vim.keymap.set
local ns = { noremap = true, silent = true }

g.mapleader = " "

vim.keymap.set("n", "<leader>m", "<cmd>Dispatch! g++ -std=c++11 % -o out<CR>", ns)

-- build project
set("n", "<leader>b", "<cmd>Make!<cr>", ns)

-- return to normal mode
set("i", "jk", "<Esc>", ns)
set("v", "jk", "<Esc>", ns)

-- toggle fullscreen window
set("n", "<leader>z", ":Maximize<CR>", ns)

-- LazyGit
set("n", "git", "<cmd>LazyGit<CR>", ns)

set("n", "<leader>rs",
    "<cmd>Dispatch! rsync -azP ~/Desktop/Home/Projects/fire-web-testing/ root@68.183.202.160:fire-web-testing/<CR>",
    ns);

-- new fuzzy-finding

local builtin = require('telescope.builtin')
-- find file
set('n', '<leader>f', builtin.find_files, {})
-- new vertical window + find file
set('n', '<leader>nw', function()
    vim.cmd('vsplit')
    builtin.find_files()
end, {})
set("n", "gl", builtin.live_grep, {})

-- window navigation (including tmux)
require('nvim-tmux-navigation').setup {
    keybindings = {
        left = "<C-h>",
        down = "<C-j>",
        up = "<C-k>",
        right = "<C-l>",
        last_active = "<C-\\>",
        next = "<C-Space>",
    }
}

-- make it rain
-- set("n", "<leader>rain", ":CellularAutomaton make_it_rain<CR>", ns)

-- quitting keymaps
set("n", "<leader>e", ":wq!<CR>", ns)
set("n", "<leader>q", ":q!<CR>", ns)

-- save
set("n", "<leader>s", ":w<CR>", ns)

-- right arrow
set("i", "<C-Space>", "<Right>", ns)

-- yank to clipboard
set({"n", "v"}, "<leader>y", [["+y]])

-- move line of text up / down
set("v", "J", ":m '>+1<cr>gv=gv")
set("v", "K", ":m '<-2<cr>gv=gv")

-- keep cursos in center while scrolling
set("n", "<C-u>", "<C-u>zz", ns)
set("n", "<C-d>", "<C-d>zz", ns)

-- change all instances of word
set("n", "<leader>c", [[:%s/\<<C-r><C-w>\>//gI<Left><Left><Left>]])

-- undo in insert mode
set("i", "<C-u>", "<Esc>u")

-- enter from normal mode
set("n", "<CR>", "o")

vim.api.nvim_create_autocmd("WinNew", {
  pattern = "*",
  command = "wincmd p"
})
