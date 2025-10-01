-- This will run last in the setup process.
-- This is just pure lua so anything that doesn't
-- fit in the normal config locations above can go here
--
-- Ativar quebra de linha automática
vim.opt.wrap = true

-- Opcional: melhorar a experiência de navegação em linhas longas
vim.opt.linebreak = true -- evita quebrar no meio das palavras
vim.opt.showbreak = "↪ " -- indicador visual para linha quebrada

-- Mostrar números de linha absolutos
vim.opt.number = true
vim.opt.relativenumber = false -- desativar numeração dinâmica
