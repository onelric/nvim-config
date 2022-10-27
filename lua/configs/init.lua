for _, v in ipairs({
    'notify',
    'goto',
    'diagnostics',
    'lspinstaller',
    'alpha',
    'nvimtree',
    'lualine',
    'bufferline',
    'toggleterm',
    'trouble',
    'indents',
    'gitsigns',
    'lsp',
    'cmp',
    'autopairs',
    'colorizer',
    'telescope',
    'rainbowbrackets',
    'treesitter',
}) do
    require("configs/" .. v)
end
