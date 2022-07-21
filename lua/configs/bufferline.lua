local color = require 'colorschemes.paradise'

require('bufferline').setup {
    options = {
        offsets = { { filetype = "NvimTree", text = "File Explorer", padding = 0 } },
        separator_style = 'thin', --"padded_slant",
        show_buffer_close_icons = true,
        modified_icon = '', -- ''
        close_icon = '✗',
        buffer_close_icon = '✗',
        show_close_icon = true,
        diagnostics = "nvim_lsp",
    },
    highlights = {
        fill                        = { guibg = color.base000 },
        background                  = { guibg = '#0f0f0f' },
        indicator_selected          = { guifg = color.base00 },
        -- Close button
        close_button                = { guifg = color.base03 },
        close_button_visible        = { guifg = color.base03 },
        close_button_selected       = { guifg = color.base08 },
        -- Separators
        separator_selected          = { guifg = color.base000 },
        separator_visible           = { guifg = color.base000 },
        separator                   = { guifg = color.base000 },
        -- Warnings
        warning_selected            = { guifg = color.base05 },
        warning_diagnostic          = { guifg = color.base0A },
        warning_diagnostic_selected = { guifg = color.base0A },
        -- Misc
        info_selected               = { guifg = color.base05 },
        error_selected              = { guifg = color.base05 },
        info_diagnostic             = { guifg = color.base0D },
        error_diagnostic            = { guifg = color.base08 },
    }
}
