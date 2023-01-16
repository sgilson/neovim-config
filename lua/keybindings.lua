local map = vim.api.nvim_set_keymap
vim.g.mapleader=' '

map('n', '<leader>n', [[:NvimTreeFocus<CR>]], {})
map('n', '<leader>t', [[:vsplit | terminal<CR>]], {})
map('n', '<leader>q', [[:q<CR>]], {})

map('t', '<Esc>', [[<C-\><C-n>]], {})

