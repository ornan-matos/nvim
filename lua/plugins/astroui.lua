---@type LazySpec
return {
	"AstroNvim/astroui",
	---@type AstroUIOpts
	opts = {
		status = {
			colors = function(hl)
				local pill_bg = "#dcdfe7"
				local pill_fg = "#2c2e34"

				hl.status_bg = "NONE"
				hl.winbar_bg = "NONE"
				hl.tabline_bg = "NONE"
				hl.tabline_fill_bg = "NONE"

				local components = {
					"file_info",
					"git_branch",
					"file_icon",
					"diagnostics",
					"treesitter",
					"nav_icon",
					"nav_folder",
					"macro_recording",
					"search_count",
					"lsp_client_names",
					"file_size",
					"file_encoding",
					"position",
					"percentage",
					"ruler",
					"scroll_percentage",
				}

				for _, comp in ipairs(components) do
					hl[comp .. "_bg"] = pill_bg
					hl[comp .. "_fg"] = pill_fg
				end

				-- Git diff: o surround usa "git_diff_bg"; o texto usa git_added/changed/removed
				hl.git_diff_bg = pill_bg
				hl.git_diff_fg = pill_fg
				hl.git_added = "#4f8f3f"
				hl.git_changed = "#b07d1f"
				hl.git_removed = "#c0392b"

				-- LSP
				hl.lsp_bg = pill_bg
				hl.lsp_fg = pill_fg

				-- Nav (posição / linha:coluna)
				hl.nav_bg = pill_bg
				hl.nav_fg = pill_fg

				hl.tab_active_bg = pill_bg
				hl.tab_active_fg = pill_fg
				hl.tab_inactive_bg = "#cacdd7"
				hl.tab_inactive_fg = "#6b6e78"

				-- ===== BARRA SUPERIOR: tabline / buffers (AstroNvim nativo) =====
				-- Buffer ativo (arquivo atual) → bolha clara
				hl.buffer_active_bg = pill_bg
				hl.buffer_active_fg = pill_fg
				-- Buffer visível (aberto em split) → bolha clara
				hl.buffer_visible_bg = pill_bg
				hl.buffer_visible_fg = pill_fg
				-- Buffer inativo → cinza um pouco mais escuro p/ distinguir
				hl.buffer_bg = "#cacdd7"
				hl.buffer_fg = "#6b6e78"

				-- Ícone de arquivo dentro do botão (segue o mesmo fundo)
				hl.buffer_active_file_icon_bg = pill_bg
				hl.buffer_visible_file_icon_bg = pill_bg
				hl.buffer_file_icon_bg = "#cacdd7"

				-- Indicador de modificado (•) dentro do botão
				hl.buffer_active_file_modified_bg = pill_bg
				hl.buffer_active_file_modified_fg = pill_fg
				hl.buffer_visible_file_modified_bg = pill_bg
				hl.buffer_file_modified_bg = "#cacdd7"

				return hl
			end,

			separators = {
				none = { "", "" },
				left = { vim.fn.nr2char(0xe0b6), vim.fn.nr2char(0xe0b4) .. "  " },
				right = { "  " .. vim.fn.nr2char(0xe0b6), vim.fn.nr2char(0xe0b4) },
				tab = { vim.fn.nr2char(0xe0b6), vim.fn.nr2char(0xe0b4) },
			},
		},

		icons = {
			LSPLoading1 = "⠋",
			LSPLoading2 = "⠙",
			LSPLoading3 = "⠹",
			LSPLoading4 = "⠸",
			LSPLoading5 = "⠼",
			LSPLoading6 = "⠴",
			LSPLoading7 = "⠦",
			LSPLoading8 = "⠧",
			LSPLoading9 = "⠇",
			LSPLoading10 = "⠏",
		},
	},
}
