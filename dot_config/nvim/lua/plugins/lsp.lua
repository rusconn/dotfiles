return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = false },
      -- Masonからの自動起動を防ぎ、プロジェクト側でExtrasを明示的にimportする
      servers = {
        oxlint = {
          mason = false,
        },
        oxfmt = {
          mason = false,
        },
        biome = {
          mason = false,
        },
        prettier = {
          mason = false,
        },
        tailwindcss = {
          mason = false,
        },
      },
    },
  },
}
