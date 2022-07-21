function CLOSE_TAB()
    vim.api.nvim_command('NvimTreeClose')
    vim.api.nvim_command('bd!')
    vim.api.nvim_command('NvimTreeOpen')
    vim.api.nvim_command('wincmd l')
end

function TOGGLE_TROUBLE()
    vim.api.nvim_command('NvimTreeClose')
    vim.api.nvim_command('TroubleToggle')
    vim.api.nvim_command('NvimTreeOpen')
    vim.api.nvim_command('wincmd l')
end

function FORMAT_DOCUMENT()
    vim.cmd 'lua vim.diagnostic.hide()'
    vim.cmd 'lua vim.lsp.buf.formatting_sync()'
    vim.cmd 'lua vim.diagnostic.show()'
end
