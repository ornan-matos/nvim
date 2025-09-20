-- AstroLSP allows you to customize the features in AstroNvim's LSP configuration engine
-- Configuration documentation can be found with `:h astrolsp`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing

---@type LazySpec
return {
	"AstroNvim/astrolsp",
	---@type AstroLSPOpts
	opts = {
		-- Adicionamos uma lista de servidores que o AstroLSP deve gerenciar.
		-- O AstroLSP irá configurar automaticamente qualquer servidor listado aqui
		-- que esteja instalado via Mason.
		servers = {
			"pyright",
			"ruff",
			-- Adicione outros LSPs que você usa aqui, por exemplo: "lua_ls", "tsserver", etc.
		},

		-- O resto das opções são as padrões do AstroNvim, mantidas aqui para referência.
		-- customize lsp formatting options
		formatting = {
			-- control auto formatting on save
			format_on_save = {
				enabled = true, -- enable or disable format on save globally
				allow_filetypes = {},
				ignore_filetypes = {},
			},
			disabled = {},
			timeout_ms = 1000,
		},
		-- O resto das configurações podem ser mantidas como padrão ou customizadas se necessário.
	},
}
