local function goto_def_or_decl()
  local ok = pcall(vim.lsp.buf.definition, { reuse_win = true })
  if not ok then
    pcall(vim.lsp.buf.declaration, { reuse_win = true })
  end
end

vim.keymap.set('n', 'gd', goto_def_or_decl, { desc = 'Go to definition (fallback: declaration)' })
vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, { desc = 'Go to declaration' })
vim.api.nvim_create_autocmd('BufWritePre', {
  pattern = { '*.c', '*.cpp', '*.h' },
  callback = function()
    vim.lsp.buf.format()
  end,
})

return {
  {
    'ray-x/lsp_signature.nvim',
    config = function()
      require('lsp_signature').setup {
        bind = true,
        handler_opts = {
          border = 'rounded',
        },
      }
    end,
  },
  {
    'amrbashir/nvim-docs-view',
    config = function()
      require('docs-view').setup {
        position = 'bottom',
        width = 60,
      }
    end,
  },
  {
    'nvim-lua/lsp-status.nvim',
    config = function()
      require('lsp-status').register_progress()
    end,
  },
}
