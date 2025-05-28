return {
  -- Este plugin local não depende de nenhum outro
  {
    "LazyVim/LazyVim",
    opts = {
      -- Opções padrão que você quer sobrescrever
    },
    init = function()
      -- Opções gerais do Neovim
      local opt = vim.opt

      -- Número de linhas
      opt.number = true
      opt.relativenumber = false

      -- Scroll fixo
      opt.scrolloff = 8
      opt.sidescrolloff = 8

      -- Tabs e identação
      opt.expandtab = true
      opt.shiftwidth = 4
      opt.tabstop = 4
      opt.smartindent = true

      -- Interface
      opt.cursorline = true
      opt.signcolumn = "yes"
      opt.wrap = false

      -- Pesquisas
      opt.ignorecase = true
      opt.smartcase = true

      -- Aparência
      opt.termguicolors = true

      -- Desempenho
      opt.updatetime = 300
      opt.timeoutlen = 500

      -- Janelas divididas
      opt.splitright = true
      opt.splitbelow = true

      -- Backup
      opt.backup = false
      opt.writebackup = false
      opt.swapfile = false

      -- Outras
      opt.clipboard = "unnamedplus"
    end,
  },
}
