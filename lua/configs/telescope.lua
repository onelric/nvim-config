local actions = require 'telescope.actions'

require('telescope').setup{
    defaults = {
        mappings = {
            n = {
                [":q<cr>"] = actions.close,
            },
        }
    },
    pickers = {
        find_files = { prompt_prefix = "   " },
        oldfiles = { prompt_prefix = "   " },
    },
    extensions = {
    },
}

