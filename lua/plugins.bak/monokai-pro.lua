return {
	-- ==========================================
	-- TEMA ANTIGO: monokai-pro (Comentado)
	-- ==========================================
	-- {
	--   "loctvl842/monokai-pro.nvim",
	--   priority = 1000,
	--   config = function()
	--     require("monokai-pro").setup({
	--       transparent_background = true,
	--       terminal_colors = true,
	--       devicons = true,
	--       styles = {
	--         comment = { italic = true },
	--         keyword = { italic = true },
	--         type = { italic = true },
	--       },
	--       filter = "spectrum",
	--     })
	--     vim.cmd.colorscheme("monokai-pro")
	--     vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	--     vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
	--     vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	--     vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none" })
	--     vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "none" })
	--     vim.api.nvim_set_hl(0, "TelescopeBorder", { bg = "none" })
	--   end,
	-- },

	-- ==========================================
	-- NOVO TEMA: monokai-v2 (Ativo)
	-- ==========================================
	{
		"khoido2003/monokai-v2.nvim",
		priority = 1000,
		config = function()
			-- Impede que o tema force caixas quadradas ao arrancar
			vim.api.nvim_create_autocmd("ColorScheme", {
				pattern = "monokai-v2",
				callback = function()
					local hl_groups = {
						"Normal",
						"NormalNC",
						"NormalFloat",
						"FloatBorder",
						"SignColumn",
						"LineNr",
						"CursorLineNr",
						"EndOfBuffer",
						"TelescopeNormal",
						"TelescopeBorder",
						"NeoTreeNormal",
						"NeoTreeNormalNC",
						-- Força a transparência dos contentores das barras:
						"StatusLine",
						"StatusLineNC",
						"TabLineFill",
						"WinBar",
						"WinBarNC",
					}

					for _, group in ipairs(hl_groups) do
						vim.api.nvim_set_hl(0, group, { bg = "none" })
					end
				end,
			})

			require("monokai-v2").setup({
				filter = "light",
				transparent_background = true,
			})
			vim.cmd("colorscheme monokai-v2")
		end,
	},
}
