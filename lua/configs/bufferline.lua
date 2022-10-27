local color = require 'colorschemes.paradise'

local custom = '#191919'

require('bufferline').setup {
    options = {
        offsets = { { filetype = 'NvimTree', text = 'File Explorer', padding = 0 } },
        separator_style = 'thin', --'padded_slant',
        show_buffer_close_icons = true,
        modified_icon = '',
        close_icon = '✗',
        buffer_close_icon = '✗',
        show_close_icon = true,
        diagnostics = "nvim_lsp",
    },
    highlights = {
        fill                  = { bg = color.base00 },
        background            = { bg = custom },
        indicator_selected    = { fg = color.base00 },
        close_button          = { fg = color.base03, bg = custom },
        close_button_visible  = { fg = color.base03, bg = color.base00 },
        close_button_selected = { fg = color.base08 },
        separator             = { fg = color.base000, bg = custom },
        separator_visible     = { fg = color.base00, bg = color.base00 },
        separator_selected    = { fg = color.base00, bg = color.base00 },
        warning               = { fg = color.base09, bg = custom, underline = true },
        warning_visible       = { fg = color.base09 },
        warning_selected      = { fg = color.base09, underline = true, italic = true, },
        error                 = { fg = color.base08, bg = custom, underline = true },
        error_visible         = { fg = color.base08 },
        error_selected        = { fg = color.base08, underline = true, italic = true },
        hint                  = { fg = color.base0D, bg = custom, underline = true },
        hint_visible          = { fg = color.base0D },
        hint_selected         = { fg = color.base0D, underline = true, italic = true },
    }
}
