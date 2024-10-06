vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set('n', '<Left>',  ':echoe "Use h to move left"<CR>')
vim.keymap.set('n', '<Right>', ':echoe "Use l to move right"<CR>')
vim.keymap.set('n', '<Up>',    ':echoe "Use k to move up"<CR>')
vim.keymap.set('n', '<Down>',  ':echoe "Use j to move down"<CR>')

vim.keymap.set('i', '<Left>',  '<ESC>:echoe "Use h to move left"<CR>')
vim.keymap.set('i', '<Right>', '<ESC>:echoe "Use l to move right"<CR>')
vim.keymap.set('i', '<Up>',    '<ESC>:echoe "Use k to move up"<CR>')
vim.keymap.set('i', '<Down>',  '<ESC>:echoe "Use j to move down"<CR>')
