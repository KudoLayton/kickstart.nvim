return {
  'simrat39/rust-tools.nvim',
  ft = 'rust',
  config = function()
    local mason_path = os.getenv 'HOME' .. '.local/share/nvim/mason/'
    local codelldb_path = mason_path .. 'packages/codelldb/codelldb'
    local liblldb_path = mason_path .. 'packages/codelldb/extension/lldb/bin/liblldb.so'
    local rt = require 'rust-tools'
    local opts = {
      dap = {
        adapter = require('rust-tools.dap').get_codelldb_adapter(codelldb_path, liblldb_path),
      },
      server = {
        on_attach = function(_, bufnr)
          vim.keymap.set('n', '<leader>rh', rt.hover_actions.hover_actions, { buffer = bufnr })
          vim.keymap.set('n', '<leader>ra', rt.code_action_group.code_action_group, { buffer = bufnr })
        end,
      },
    }
    rt.setup(opts)
    vim.api.nvim_create_user_command('RustInlayHintsSet', function()
      rt.inlay_hints.set()
    end, { nargs = 0 })
    vim.api.nvim_create_user_command('RustInlayHintsUnset', function()
      rt.inlay_hints.unset()
    end, { nargs = 0 })
    vim.api.nvim_create_user_command('RustInlayHintsEnable', function()
      rt.inlay_hints.enable()
    end, { nargs = 0 })
    vim.api.nvim_create_user_command('RustInlayHintsDisable', function()
      rt.inlay_hints.disable()
    end, { nargs = 0 })

    vim.api.nvim_create_user_command('RustRunnables', function()
      rt.runnables.runnables()
    end, { nargs = 0 })
    vim.api.nvim_create_user_command('RustDebuggables', function()
      rt.debuggables.debuggables()
    end, { nargs = 0 })
  end,
}
