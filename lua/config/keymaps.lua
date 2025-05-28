-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
-- Desativa o mapeamento de 's' do Flash
local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- ✅ Restaurar 's' para substituir caractere (comportamento padrão do Vim)
map("n", "s", "s", opts)
map("x", "s", "s", opts)

-- ⚡️ Mapear Flash para <leader>o
map({ "n", "x", "o" }, "<leader>o", function()
  require("flash").jump()
end, { desc = "Flash Jump" })
