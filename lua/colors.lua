vim.cmd('set termguicolors')

local color = require 'colorschemes.paradise'

require('base16-colorscheme').setup(color)

local function hl(highlight, fg, bg)
    if fg == nil then fg = "none" end
    if bg == nil then bg = "none" end
    vim.cmd("hi " .. highlight .. " guifg=" .. fg .. " guibg=" .. bg)
end

local function hl_italic(highlight)
    vim.cmd("hi " .. highlight .. " cterm=italic gui=italic")
end

-- Notify
hl("NotifyERRORBorder", color.base08)
hl("NotifyWARNBorder", color.base0A)
hl("NotifyINFOBorder", color.base0C)
hl("NotifyDEBUGBorder", color.base0B)
hl("NotifyTRACEBorder", color.base04)
hl("NotifyERRORIcon", color.base08)
hl("NotifyWARNIcon", color.base0A)
hl("NotifyINFOIcon", color.base0C)
hl("NotifyDEBUGIcon", color.base0B)
hl("NotifyTRACEIcon", color.base04)
hl("NotifyERRORTitle", color.base08)
hl("NotifyWARNTitle", color.base0A)
hl("NotifyINFOTitle", color.base0C)
hl("NotifyDEBUGTitle", color.base0B)
hl("NotifyTRACETitle", color.base04)

-- Treesitter italics
hl_italic("TSComment")
hl_italic("TSNone")
hl_italic("TSKeyword")
hl_italic("TSKeywordFunction")
hl_italic("TSFuncMacro")
hl_italic("TSInclude")
hl_italic("TSType")
hl_italic("TSKeywordOperator")
hl("TSKeyword", color.base0E)
hl("TSKeywordFunction", color.base0E)
hl("TSNone", color.base08)

-- Diagnostics
hl("DiagnosticVirtualTextWarn", color.base0A)
hl("DiagnosticWarn", color.base0A)
hl("TroubleNormal", nil, color.base000)
hl("TroubleWarning", color.base0A)
hl("TroubleFoldIcon", color.base04)

hl("StatusLineNC", color.base000, color.base000)
hl("StatusLine", color.base000, color.base000)

-- Gutter
hl("DiagnosticSignInfo", color.base04)
hl("EndOfBuffer", color.base00)

-- Nvim Tree
hl("NvimTreeFolderName")
hl("NvimTreeOpenedFolderName")
hl("NvimTreeEmptyFolderName")
hl("NvimTreeFolderIcon", color.base04)
hl("NvimTreeSpecialFile", color.base0E)
hl("NvimTreeImageFile", color.base0C)
hl("NvimTreeWindowPicker", color.base05, color.base01)
hl("NvimTreeIndentMarker", color.base03)
hl("NvimTreeNormal", nil, color.base000)
hl("NvimTreeVertSplit", color.base00, color.base00)

-- Nvim Tree Git
hl("NvimTreeGitDirty", color.base08)
hl("NvimTreeGitNew", color.base0B)
hl("NvimTreeGitDeleted", color.base08)
hl("NvimTreeGitRenamed", color.base0A)
hl("NvimTreeGitExecFile", color.base0B)

-- Telescope
hl("TelescopeBorder", color.base07, color.base00)
hl("TelescopePromptBorder", color.base07, color.base00)
hl("TelescopePromptNormal", nil, color.base000)
hl("TelescopePromptPrefix", color.base08, color.base01)
hl("TelescopeSelection", nil, color.base01)

-- Menues
hl("Pmenu", nil, color.base00)
hl("PmenuSbar", nil, color.base01)
hl("PmenuThumb", nil, color.base01)
hl("PmenuSel", nil, color.base02)

-- CMP
hl("CmpItemAbbrMatch", color.base0D)
hl("CmpItemAbbrMatchFuzzy", color.base0D)
hl("CmpItemAbbr", color.base04)
hl("CmpItemKind", color.base0E)
hl("CmpItemMenu", color.base0E)

-- Line Numbers and Cursor
hl("CursorLine", nil, color.base000)
hl("CursorLineNR", nil, color.base000)
hl("LineNr", color.base03, color.base000)

hl("CursorLine")
hl("CursorLineNR")
hl("LineNr", color.base03)

-- Others
hl("NormalFloat", nil, color.base00)
hl("FloatBorder", color.base05, color.base00)
hl("VertSplit", color.base000)
