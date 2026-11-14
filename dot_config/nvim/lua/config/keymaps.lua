local map = vim.keymap.set

-- x(1文字削除)でレジスタを上書きしない
map({ "n", "x" }, "x", '"_x', { desc = "Delete char without yanking" })

-- c(変更)でレジスタを上書きしない
map({ "n", "x" }, "c", '"_c', { desc = "Change without yanking" })
map("n", "C", '"_C', { desc = "Change to end of line without yanking" })

-- ビジュアルモードで選択範囲にペーストしたとき、消えた文字でレジスタを上書きしない
map("x", "p", '"_dP', { desc = "Paste without overwriting register" })

map("n", "<leader>fy", function()
  local path = vim.fn.expand("%:.")
  vim.fn.setreg("+", path)
  vim.notify("Copied: " .. path)
end, { desc = "Copy relative path" })

map("n", "<leader>fY", function()
  local path = vim.fn.expand("%:p")
  vim.fn.setreg("+", path)
  vim.notify("Copied: " .. path)
end, { desc = "Copy absolute path" })

-- DBUI: .sqlファイルでも<leader>Sでクエリを実行できるようにする
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "sql", "mysql", "plsql" },
  callback = function(event)
    -- ノーマルモード: <leader>Sでファイル全体を実行
    vim.keymap.set("n", "<leader>S", "<cmd>%DB<cr>", {
      buffer = event.buf,
      desc = "Execute entire SQL file",
    })
    -- ビジュアルモード: <leader>Sで選択した範囲を実行
    vim.keymap.set("v", "<leader>S", ":DB<cr>", {
      buffer = event.buf,
      desc = "Execute selected SQL",
    })
  end,
})
