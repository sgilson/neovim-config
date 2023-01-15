-- search files, even hidden ones
vim.keymap.set('n', '<leader>ff', ':lua require"telescope.builtin".find_files({no_ignore=true, hidden=true})<CR>', {})
-- ripgrep files, respects gitignore
vim.keymap.set('n', '<leader>fg', ':lua require"telescope.builtin".live_grep()<CR>', {})
-- search through buffers
vim.keymap.set('n', '<leader>fb', ':lua require"telescope.builtin".buffers({sort_mru=true})<CR>', {})

