local git_icons = {
    unstaged  = "✗",
    staged    = "✓",
    unmerged  = "",
    renamed   = "➜",
    untracked = "★",
    deleted   = "",
    ignored   = "◌",
}

local folder_icons = {
    default      = "",
    open         = "",
    empty        = "",
    empty_open   = "",
    symlink      = "",
    arrow_open   = "",
    arrow_closed = "",
}

local icons = {
    default = "",
    symlink = "",
    git     = git_icons,
    folder  = folder_icons,
}

local diagnostic_icons = {
    error   = '',
    warning = '',
    hint    = '',
    info    = '',
}

require('nvim-tree').setup({
    filters     = { dotfiles = false },
    git         = { ignore = false, },
    diagnostics = {
        enable = true,
        icons  = diagnostic_icons,
    },

    disable_netrw = true,
    hijack_cursor = true,

    update_focused_file = {
        enable      = true,
        update_root = false,
    },

    view     = { width = 45, },
    renderer = {
        highlight_git  = true,
        indent_markers = { enable = false },
        icons          = {
            show = {
                file         = true,
                folder       = true,
                folder_arrow = true,
            },
            glyphs = icons,
        }
    }
})
