local options = {
    backup = false,
    hlsearch = true,
    incsearch = true,
    showmode = false,
    showtabline = 2,
    ignorecase = true,
    --smartcase = true,
    smartindent = true,
    swapfile = false,
    termguicolors = true,
    shiftwidth = 4,
    tabstop = 4,
    softtabstop = 4,
    --laststatus = 2, -- Show at the current buffer. But wont highlight a horizontal split
    laststatus = 3, -- Always show at the bottom
    expandtab = true,
    cursorline = true,
    number = true,
    nu = true,
    --relativenumber = true,
    numberwidth = 4,
    wrap = false,
    scrolloff = 8,
    sidescrolloff = 8,
    bg = 'dark'
}

vim.opt.shortmess:append "c"
for k, v in pairs(options) do
    vim.opt[k] = v
end

-- Replace vertical split char
vim.cmd('set fillchars+=vert:▐')

-- Map vim notifications to use the notify plugin
vim.notify = require("notify")

-- Auto formatting
vim.cmd 'autocmd BufWritePre * lua FORMAT_DOCUMENT()'

-- Auto attach colorizer
vim.cmd 'autocmd BufEnter * ColorizerAttachToBuffer'
