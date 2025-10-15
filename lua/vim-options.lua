vim.cmd("set expandtab"); --uses spaces as tabs
vim.cmd("set tabstop=4"); --
vim.cmd("set softtabstop=4");
vim.cmd("set shiftwidth=4"); --soft tab stop and shiftwidth should be equal
vim.cmd("set number") --turn on line numbers

vim.g.mapleader = " "

-- make using the arrows impossible in normal mode
-- yank highlighting
vim.api.nvim_create_autocmd('TextYankPost', {
    group = vim.api.nvim_create_augroup('highlight_yank', {}),
    desc = 'Hightlight selection on yank',
    pattern = '*',
    callback = function()
        vim.highlight.on_yank { higroup = 'IncSearch', timeout = 100 }
    end,
})

-- copying and pasting to the system clipboard
vim.keymap.set('v', '<leader>y', '"+y')
vim.keymap.set('n', '<leader>y', '"+y')
vim.keymap.set('n', '<leader>Y', '"+yg_')
vim.keymap.set('n', '<leader>yy', '"+yy')

vim.keymap.set('v', '<leader>p', '"+p')
vim.keymap.set('v', '<leader>P', '"+P')
vim.keymap.set('n', '<leader>p', '"+p')
vim.keymap.set('n', '<leader>P', '"+P')
