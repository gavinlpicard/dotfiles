-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set('n', '<Left>',  ':echoe "Use h to move left"<CR>')
vim.keymap.set('n', '<Right>', ':echoe "Use l to move right"<CR>')
vim.keymap.set('n', '<Up>',    ':echoe "Use k to move up"<CR>')
vim.keymap.set('n', '<Down>',  ':echoe "Use j to move down"<CR>')

vim.keymap.set('i', '<Left>',  '<ESC>:echoe "Use h to move left"<CR>')
vim.keymap.set('i', '<Right>', '<ESC>:echoe "Use l to move right"<CR>')
vim.keymap.set('i', '<Up>',    '<ESC>:echoe "Use k to move up"<CR>')
vim.keymap.set('i', '<Down>',  '<ESC>:echoe "Use j to move down"<CR>')

-- Setup lazy.nvim
require("lazy").setup({
  spec = {
    -- import your plugins
    { import = "plugins" },
  },
  -- Configure any other settings here. See the documentation for more details.
  -- colorscheme that will be used when installing plugins.
  install = { colorscheme = { "miasma" } },
  -- automatically check for plugin updates
  checker = { enabled = true },
})
