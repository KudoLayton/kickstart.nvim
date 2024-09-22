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
