local shared_exclude = {
  ".git",
  ".cache",
  ".DS_Store",
  "coverage",
}

local lockfiles = {
  "pnpm-lock.yaml",
  "package-lock.json",
  "yarn.lock",
  "Cargo.lock",
}

return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      sources = {
        explorer = {
          hidden = true,
          ignored = true,
          exclude = shared_exclude,
        },
        files = {
          hidden = true,
          exclude = shared_exclude,
        },
        grep = {
          hidden = true,
          follow = true,
          exclude = vim.list_extend(vim.deepcopy(shared_exclude), lockfiles),
        },
      },
    },
  },
}
