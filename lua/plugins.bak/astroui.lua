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

				-- Git diff: mesmo fundo da bolha + cores semânticas no texto
				hl.git_diff_added_bg = pill_bg
				hl.git_diff_changed_bg = pill_bg
				hl.git_diff_removed_bg = pill_bg
				hl.git_diff_added_fg = "#4f8f3f"
				hl.git_diff_changed_fg = "#b07d1f"
				hl.git_diff_removed_fg = "#c0392b"

				-- LSP - variações de nome
				hl.lsp_bg = pill_bg
				hl.lsp_fg = pill_fg

				-- Git diff - o nome real costuma ser sem "diff"
				-- (já tentamos git_added e git_diff_added; falta o surround do bloco)
				hl.git_bg = pill_bg
				hl.git_fg = pill_fg

				-- Nav (posição / linha:coluna)
				hl.nav_bg = pill_bg
				hl.nav_fg = pill_fg

				hl.tab_active_bg = pill_bg
				hl.tab_active_fg = pill_fg
				hl.tab_inactive_bg = "#cacdd7"
				hl.tab_inactive_fg = "#6b6e78"

				return hl
			end,

			separators = {
				none = { "", "" },
				left = { vim.fn.nr2char(0xe0b6), vim.fn.nr2char(0xe0b4) .. "  " },
				right = { "  " .. vim.fn.nr2char(0xe0b6), vim.fn.nr2char(0xe0b4) },
				tab = { "", "" },
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
