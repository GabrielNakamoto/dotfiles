-- vim.g.python3_host_prog = '/usr/local/bin/python3'  -- or the path to your Python 3 executable
require('plugins')
require('remap')
require('lsp')
require('settings')
-- require('mylsp')
-- require('nvimcmp')
-- lualine
-- vim.g.fzf_vim = {}
-- vim.g.fzf_vim.preview_window = {}

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>f', builtin.find_files, {})
vim.keymap.set('n', '<leader>nw', function()
    vim.cmd('vsplit')
    builtin.find_files()
end, {})
vim.keymap.set('n', '<leader>ts', builtin.treesitter, {})

-- vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
-- vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
-- vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

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

-- local function maximize_status()
--   return vim.t.maximized and '   ' or ''
-- end

require('lualine').setup{
sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {
      'filename',
      function()
        return vim.fn['nvim_treesitter#statusline'](180)
      end},
    -- lualine_c = { maximize_status },
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  }
}

vim.cmd([[
  autocmd! BufNewFile,BufRead *.glsl,*.vert,*.frag,*.geom set filetype=glsl
]])

vim.g.better_whitespace_enabled = 1

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

require('nvim-autopairs').setup {}


-- Enable Gruvbox theme
vim.cmd('syntax enable')
vim.cmd('colorscheme gruvbox')

-- -- Gruvbox configuration
vim.g.gruvbox_bold = 1
vim.g.gruvbox_italic = 1
vim.g.gruvbox_invert_selection = 0
vim.cmd('highlight Normal guibg=NONE ctermbg=NONE')

-- Treesitter configuration
require'nvim-treesitter.configs'.setup {
  ensure_installed = { "cpp", "lua", "python", "javascript" }, -- Add the languages you use
  highlight = {
    enable = true,              -- false will disable the whole extension
    disable = {},               -- list of language that will be disabled
  },
  indent = {
    enable = true
  }
}

-- local lspconfig = require('lspconfig')

