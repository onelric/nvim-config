for _, v in ipairs({
    'notify',
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
