return {
  {
    "loctvl842/monokai-pro.nvim",
    priority = 1000,
    config = function()
      require("monokai-pro").setup({
        filter = "spectrum", -- opções: pro, classic, octagon, machine, ristretto, spectrum
      })
      vim.cmd.colorscheme("monokai-pro")
    end,
  },
}
