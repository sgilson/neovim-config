local o = vim.o

o.smartindent = true
o.tabstop = 4
o.expandtab = true
o.shiftwidth = 4
o.softtabstop = 4
o.number = true
o.relativenumber = true
o.ignorecase = true
o.showmatch = true
o.hlsearch = true
o.splitright = true

vim.api.nvim_set_option("clipboard","unnamed")

vim.api.nvim_create_autocmd('TextYankPost', {
    group = vim.api.nvim_create_augroup('highlight_yank', {}),
    desc = 'Hightlight selection on yank',
    pattern = '*',
    callback = function()
        vim.highlight.on_yank { higroup = 'IncSearch', timeout = 500 }
    end,
})
