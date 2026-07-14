vim.cmd("hi clear")
if vim.fn.exists("syntax_on") == 1 then
  vim.cmd("syntax reset")
end

vim.o.termguicolors = true
vim.g.colors_name = "mytheme"

local p = {
  bg = "#000000",
  fg = "#ffffff",

  black   = "#27272a",
  red     = "#f5a191",
  green   = "#90b99f",
  yellow  = "#e6b99d",
  blue    = "#aca1cf",
  magenta = "#e29eca",
  cyan    = "#ea83a5",
  white   = "#c1c0d4",

  bright_black   = "#353539",
  bright_red     = "#ffae9f",
  bright_green   = "#9dc6ac",
  bright_yellow  = "#f0c5a9",
  bright_blue    = "#b9aeda",
  bright_magenta = "#ecaad6",
  bright_cyan    = "#f591b2",
  bright_white   = "#cac9dd",

  comment = "#7a7a85",
}

local hl = function(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

hl("Normal",       { fg = p.fg, bg = p.bg })
hl("NormalFloat",  { fg = p.fg, bg = p.black })
hl("FloatBorder",  { fg = p.bright_black, bg = p.black })
hl("Cursor",       { fg = p.bg, bg = p.fg })
hl("CursorLine",   { bg = p.black })
hl("CursorLineNr", { fg = p.bright_yellow, bold = true })
hl("LineNr",       { fg = p.bright_black })
hl("SignColumn",   { bg = p.bg })
hl("ColorColumn",  { bg = p.black })
hl("Visual",       { bg = p.bright_black })
hl("VisualNOS",    { bg = p.black })
hl("Search",       { fg = p.bg, bg = p.yellow })
hl("IncSearch",    { fg = p.bg, bg = p.bright_yellow })
hl("MatchParen",   { fg = p.bright_magenta, bold = true })

hl("Pmenu",      { fg = p.fg, bg = p.black })
hl("PmenuSel",   { fg = p.bg, bg = p.blue })
hl("PmenuSbar",  { bg = p.black })
hl("PmenuThumb", { bg = p.bright_black })

hl("StatusLine",   { fg = p.fg, bg = p.black })
hl("StatusLineNC", { fg = p.bright_black, bg = p.black })
hl("VertSplit",    { fg = p.black })
hl("WinSeparator",  { fg = p.black })
hl("TabLine",      { fg = p.bright_black, bg = p.black })
hl("TabLineSel",   { fg = p.fg, bg = p.bg })
hl("TabLineFill",  { bg = p.black })

hl("NonText",     { fg = p.bright_black })
hl("Whitespace",  { fg = p.bright_black })
hl("EndOfBuffer", { fg = p.bg })

hl("DiagnosticError", { fg = p.red })
hl("DiagnosticWarn",  { fg = p.yellow })
hl("DiagnosticInfo",  { fg = p.blue })
hl("DiagnosticHint",  { fg = p.cyan })

hl("DiffAdd",    { fg = p.green, bg = p.bg })
hl("DiffChange", { fg = p.yellow, bg = p.bg })
hl("DiffDelete", { fg = p.red, bg = p.bg })
hl("DiffText",   { fg = p.bright_yellow, bg = p.bg, bold = true })

hl("Comment", { fg = p.comment, italic = true })

hl("Constant", { fg = p.yellow })
hl("String",   { fg = p.green })
hl("Character",{ fg = p.green })
hl("Number",   { fg = p.bright_yellow })
hl("Boolean",  { fg = p.bright_yellow })
hl("Float",    { fg = p.bright_yellow })

hl("Identifier", { fg = p.white })
hl("Function",   { fg = p.blue, bold = true })

hl("Statement",   { fg = p.magenta })
hl("Conditional", { fg = p.magenta })
hl("Repeat",      { fg = p.magenta })
hl("Label",       { fg = p.magenta })
hl("Operator",    { fg = p.cyan })
hl("Keyword",     { fg = p.magenta, bold = true })
hl("Exception",   { fg = p.red })

hl("PreProc",   { fg = p.cyan })
hl("Include",   { fg = p.cyan })
hl("Define",    { fg = p.cyan })
hl("Macro",     { fg = p.cyan })
hl("PreCondit", { fg = p.cyan })

hl("Type",         { fg = p.bright_white, bold = true })
hl("StorageClass", { fg = p.bright_yellow })
hl("Structure",    { fg = p.bright_white })
hl("Typedef",      { fg = p.bright_white })

hl("Special",         { fg = p.cyan })
hl("SpecialChar",     { fg = p.cyan })
hl("Tag",             { fg = p.red })
hl("Delimiter",       { fg = p.white })
hl("SpecialComment",  { fg = p.bright_black, italic = true })
hl("Debug",           { fg = p.red })

hl("Underlined", { fg = p.blue, underline = true })
hl("Ignore",     { fg = p.bright_black })
hl("Error",      { fg = p.bg, bg = p.red })
hl("Todo",       { fg = p.bg, bg = p.yellow, bold = true })

vim.g.terminal_color_0  = p.black
vim.g.terminal_color_1  = p.red
vim.g.terminal_color_2  = p.green
vim.g.terminal_color_3  = p.yellow
vim.g.terminal_color_4  = p.blue
vim.g.terminal_color_5  = p.magenta
vim.g.terminal_color_6  = p.cyan
vim.g.terminal_color_7  = p.white
vim.g.terminal_color_8  = p.bright_black
vim.g.terminal_color_9  = p.bright_red
vim.g.terminal_color_10 = p.bright_green
vim.g.terminal_color_11 = p.bright_yellow
vim.g.terminal_color_12 = p.bright_blue
vim.g.terminal_color_13 = p.bright_magenta
vim.g.terminal_color_14 = p.bright_cyan
vim.g.terminal_color_15 = p.bright_white
