local vim = vim

local M = {}

M.classic = {
  name           = 'srcery',
  black          = '#1C1B19',
  red            = '#EF2F27',
  green          = '#519F50',
  yellow         = '#FBB829',
  blue           = '#2C78BF',
  magenta        = '#E02C6D',
  cyan           = '#0AAEB3',
  white          = '#BAA67F',
  bright_black   = '#918175',
  bright_red     = '#F75341',
  bright_green   = '#98BC37',
  bright_yellow  = '#FED06E',
  bright_blue    = '#68A8E4',
  bright_magenta = '#FF5C8F',
  bright_cyan    = '#2BE4D0',
  bright_white   = '#FCE8C3',
  orange         = '#FF5F00',
  bright_orange  = '#FF8700',
  hard_black     = '#121212',
  xgray1         = '#262626',
  xgray2         = '#303030',
  xgray3         = '#3A3A3A',
  xgray4         = '#444444',
  xgray5         = '#4E4E4E',
  xgray6         = '#585858',
  none           = 'NONE'
}

M.highlight = function(group, color)
  local style = color.style and 'gui=' .. color.style or 'gui=NONE'
  local fg = color.fg and 'guifg = ' .. color.fg or 'guifg = NONE'
  local bg = color.bg and 'guibg = ' .. color.bg or 'guibg = NONE'
  local sp = color.sp and 'guisp = ' .. color.sp or ''

  vim.cmd('highlight ' .. group .. ' ' .. style .. ' ' .. fg .. ' ' .. bg .. ' ' .. sp)
end

M.load_syntax = function(palette)
  return {
    Normal = {
      fg = palette.bright_white,
    },
    Pmenu = {
      fg = palette.bright_white,
      bg = palette.xgray2,
    },
    PmenuSbar = {
      fg = palette.none,
      bg = palette.black,
    },
    PmenuSel = {
      fg = palette.bright_white,
      bg = palette.blue,
    },
    PmenuThumb = {
      fg = palette.none,
      bg = palette.black,
    },
    Cursor = {
      fg = palette.black,
      bg = palette.yellow,
    },
    ColorColumn = {
      fg = palette.none,
      bg = palette.xgray2,
    },
    CursorLine = {
      fg = palette.none,
      bg = palette.xgray2,
    },
    NonText = {
      fg = palette.xgray4,
    },
    Visual = {
      fg = palette.none,
      bg = palette.xgray2,
      style = 'bold',
    },
    VisualNOS = {
      fg = palette.none,
      bg = palette.xgray2,
      style = 'bold',
    },
    Search = {
      fg = palette.none,
      bg = palette.xgray5,
      style = 'bold',
    },
    IncSearch = {
      fg = palette.none,
      bg = palette.xgray5,
      style = 'bold',
    },
    CursorLineNr = {
      fg = palette.yellow,
    },
    MatchParen = {
      fg = palette.bright_magenta,
      style = 'bold',
    },
    Question = {
      fg = palette.orange,
      style = 'bold',
    },
    ModeMsg = {
      fg = palette.yellow,
      style = 'bold',
    },
    MoreMsg = {
      fg = palette.yellow,
      style = 'bold',
    },
    ErrorMsg = {
      fg = palette.bright_white,
      bg = palette.red,
      style = 'bold',
    },
    WarningMsg = {
      fg = palette.red,
      style = 'bold',
    },
    VertSplit = {
      fg = palette.xgray1,
    },
    LineNr = {
      fg = palette.bright_black,
    },
    SignColumn = {
      fg = palette.none,
      bg = palette.black,
    },
    StatusLine = {
      fg = palette.bright_white,
      bg = palette.xgray2,
      style = palette.none,
    },
    StatusLineNC = {
      fg = palette.bright_black,
      bg = palette.black,
      style = 'underline',
    },
    Tabline = {
      fg = palette.bright_black,
      bg = palette.xgray2,
      style = palette.none,
    },
    TabLineFill = {
      fg = palette.bright_black,
      bg = palette.xgray2,
      style = palette.none,
    },
    TabLineSel = {
      fg = palette.bright_white,
      bg = palette.xgray5,
    },
    SpellBad = {
      fg = palette.none,
      bg = palette.none,
      style = 'undercurl',
    },
    SpellCap = {
      fg = palette.green,
      bg = palette.none,
      style = 'undercurl',
    },
    SpellRare = {
      fg = palette.none,
      bg = palette.none,
      style = 'undercurl',
    },
    SpellLocal = {
      fg = palette.none,
      bg = palette.none,
      style = 'undercurl',
    },
    SpecialKey = {
      fg = palette.blue,
    },
    Title = {
      fg = palette.green,
      style = 'bold',
    },
    Directory = {
      fg = palette.green,
    },
    DiffAdd = {
      fg = palette.green,
    },
    DiffDelete = {
      fg = palette.red,
    },
    DiffChange = {
      fg = palette.cyan,
    },
    DiffText = {
      fg = palette.yellow,
    },
    diffAdded = {
      fg = palette.green,
    },
    diffRemoved = {
      fg = palette.red,
    },
    Folded = {
      fg = palette.bright_black,
      bg = palette.black,
      style = 'italic',
    },
    FoldColumn = {
      fg = palette.bright_black,
      bg = palette.black,
    },
    Constant = {
      fg = palette.bright_magenta,
    },
    Number = {
      fg = palette.bright_magenta,
    },
    Float = {
      fg = palette.bright_magenta,
    },
    Boolean = {
      fg = palette.bright_magenta,
    },
    Character = {
      fg = palette.bright_magenta,
    },
    String = {
      fg = palette.bright_green,
    },
    Type = {
      fg = palette.bright_blue,
      bg = palette.none,
    },
    Structure = {
      fg = palette.cyan,
    },
    StorageClass = {
      fg = palette.orange,
    },
    Typedef = {
      fg = palette.magenta,
    },
    Identifier = {
      fg = palette.cyan,
    },
    Function = {
      fg = palette.yellow,
    },
    Statement = {
      fg = palette.red,
    },
    Operator = {
      fg = palette.red,
    },
    Label = {
      fg = palette.red,
    },
    Keyword = {
      fg = palette.red,
    },
    PreProc = {
      fg = palette.cyan,
    },
    Include = {
      fg = palette.cyan,
    },
    Define = {
      fg = palette.cyan,
    },
    Macro = {
      fg = palette.orange,
    },
    PreCondit = {
      fg = palette.cyan,
    },
    Special = {
      fg = palette.orange,
    },
    SpecialChar = {
      fg = palette.red,
    },
    Delimiter = {
      fg = palette.white,
    },
    SpecialComment = {
      fg = palette.grey,
    },
    Tag = {
      fg = palette.orange,
    },
    Todo = {
      fg = palette.bright_white,
      bg = palette.bright_black,
      style = 'italic',
    },
    Comment = {
      fg = palette.bright_black,
      bg = palette.none,
      style = 'italic',
    },
    Underlined = {
      fg = palette.blue,
      bg = palette.none,
      style = 'underline',
    },
    Ignore = {
      fg = palette.none,
    },
    Error = {
      fg = palette.red,
      style = 'bold',
    },
    Terminal = {
      fg = palette.bright_white,
      bg = palette.hard_black,
    },
    EndOfBuffer = {
      fg = palette.hard_black,
      bg = palette.none,
    },
    Conceal = {
      fg = palette.blue,
      bg = palette.none,
    },
    vCursor = {
      fg = palette.black,
      bg = palette.yellow,
    },
    iCursor = {
      fg = palette.black,
      bg = palette.yellow,
    },
    lCursor = {
      fg = palette.black,
      bg = palette.yellow,
    },
    CursorIM = {
      fg = palette.black,
      bg = palette.yellow,
    },
    CursorColumn = {
      fg = palette.none,
      bg = palette.xgray2,
    },
    Whitespace = {
      fg = palette.xgray2,
    },
    WildMenu = {
      fg = palette.blue,
      bg = palette.black,
      style = 'bold',
    },
    QuickFixLine = {
      fg = palette.magenta,
      style = 'bold',
    },
    Debug = {
      fg = palette.orange,
    },
    debugBreakpoint = {
      fg = palette.xgray1,
      bg = palette.red,
    },
    Conditional = {
      fg = palette.red,
    },
    Repeat = {
      fg = palette.red,
    },
    Exception = {
      fg = palette.red,
    }
  }
end

M.load_plugin_syntax = function(palette)
  return {
    CursorWord0 = {
      bg = palette.white,
      fg = palette.black,
    },
    CursorWord1 = {
      bg = palette.white,
      fg = palette.black,
    },
    NvimTreeRootFolder = {
      fg = palette.red,
    },
  }
end


M.setup = function(palette)
  local syntax = M.load_syntax(M.classic)
  local async_load_plugin = nil

  vim.g.colors_name = 'srcery'
  vim.o.background = 'dark'
  vim.o.termguicolors = true
  vim.cmd('hi clear')

  if vim.fn.exists('syntax_on') then
    vim.cmd('syntax reset')
  end

  for group, colors in pairs(syntax) do
    M.highlight(group, colors)
  end

  async_load_plugin = vim.loop.new_async(
    vim.schedule_wrap(
      function()
        local plugin_syntax = M.load_plugin_syntax(M.classic)
        for group, colors in pairs(plugin_syntax) do
          M.highlight(group, colors)
        end
        async_load_plugin:close()
      end
    )
  )

  async_load_plugin:send()
end

return M
