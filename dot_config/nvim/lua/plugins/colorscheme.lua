return {
  {
    "Mofiqul/vscode.nvim",
    priority = 1000,
    opts = function()
      local c = require("vscode.colors").get_colors()
      return {
        style = "dark",
        transparent = false,
        italic_comments = false,
        underline_links = true,
        terminal_colors = true,

        -- Dark ModernのUI色に差し替え
        color_overrides = {
          vscBack = "#1F1F1F", -- エディタ背景
          vscLeftDark = "#181818", -- サイドバー等
          vscTabOther = "#181818", -- 非アクティブタブ
          vscTabOutside = "#181818",
          vscTabCurrent = "#1F1F1F", -- アクティブタブ
          vscPopupBack = "#202020",
          vscSplitDark = "#2B2B2B", -- 境界線
          vscLineNumber = "#6E7681",
        },

        group_overrides = {
          Normal = { fg = "#CCCCCC", bg = "#1F1F1F" },
          NormalFloat = { bg = "#202020" },
          FloatBorder = { fg = "#2B2B2B", bg = "#202020" },
          WinSeparator = { fg = "#2B2B2B" },
          CursorLineNr = { fg = "#CCCCCC" },
          -- アクセントを#0078D4系に
          Search = { bg = "#264F78" },
          Visual = { bg = "#264F78" },
        },
      }
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = { colorscheme = "vscode" },
  },
}
