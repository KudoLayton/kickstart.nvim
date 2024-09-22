-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
--

-- Relative, absolute line number setup
vim.o.rnu = true
vim.o.nu = true

-- 4 space tab size
vim.o.softtabstop = 4
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = false

vim.keymap.set('i', '<C-v>', '<C-r>+', { desc = 'Paste Clipboard' })
vim.api.nvim_set_keymap('v', '<C-c>', '"+y', { noremap = true, silent = true })

vim.api.nvim_create_autocmd({ 'BufRead', 'BufNewFile' }, {
  pattern = { '*.usf' },
  command = 'set filetype=hlsl',
})

-- add change directory to currnent path
vim.cmd [[command! Cdc :cd %:p:h]]

-- paste without add removed words
vim.keymap.set('x', '<leader>p', '"_dP')

-- bind <space>-p to get current buffer path
vim.keymap.set('n', '<space>p', ":echo expand('%:p')<CR>")

return {
  require 'custom.plugins.toggleterm',
  require 'custom.plugins.oil',
  require 'custom.plugins.telescope',
  require 'custom.plugins.rust',
  require 'custom.plugins.godot',
  require 'custom.plugins.neoscroll',
  require 'custom.plugins.lsp',
  require 'custom.plugins.symbols-outline',
  require 'custom.plugins.surround',
  require 'custom.plugins.bufferline',
  require 'custom.plugins.diffview',
  require 'custom.plugins.debug',
  require 'custom.plugins.copilot',
  require 'custom.plugins.cmp',
  -- require 'custom.plugins.eagle',
  'equalsraf/neovim-gui-shim',
  'powerman/vim-plugin-AnsiEsc',
  'folke/twilight.nvim',
}
