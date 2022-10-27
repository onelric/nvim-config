local lsp = require('lspconfig')

local on_attach = function(client)
    require('completion').on_attach(client)
end

-- ---- Ccls ----
lsp.ccls.setup({
    autostart = false,
})

-- ---- Clangd ----
lsp.clangd.setup {
    cmd = {
        "clangd",
        "--background-index",
        "--suggest-missing-includes",
        --"--include-directory=include/"
    },
    filetypes = { "c", "cc", "cpp", "c++", "objc", "objcpp" },
    root_dir = require('lspconfig').util.root_pattern("compile_commands.json", "compile_flags.txt", ".git");
}

-- ---- Rust Analyzer ----
lsp.rust_analyzer.setup({
    settings = {
        ["rust-analyzer"] = {
            assist = {
                importGranularity = "module",
                importPrefix = "by_self",
            },
            cargo = {
                loadOutDirsFromCheck = true
            },
            procMacro = {
                enable = false
            },
        }
    }
})

-- ---- Sumneko Lua ----
local sumneko_binary_path = vim.fn.exepath('lua-language-server')
local sumneko_root_path = vim.fn.fnamemodify(sumneko_binary_path, ':h:h:h')

require 'lspconfig'.sumneko_lua.setup {
    cmd = { sumneko_binary_path, "-E", sumneko_root_path .. "/main.lua" },
    settings = {
        Lua = {
            runtime = {
                version = 'LuaJIT',
                path = vim.split(package.path, ';')
            },
            diagnostics = {
                globals = { 'vim', 'love' },
                disable = {
                    'lowercase-global',
                    'undefined-global',
                    'trailing-space'
                }
            },
            workspace = {
                library = { [vim.fn.expand('$VIMRUNTIME/lua')] = true, [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true }
            },
            completion = {
                workspaceWord = false,
                showWord = 'Disabled'
            }
        }
    }
}

local servers = require 'globals.lsp_servers'
for _, v in ipairs(servers) do
    lsp[v].setup {
        handlers = handlers,
        on_attach = on_attach,
        autostart = true
    }
end
