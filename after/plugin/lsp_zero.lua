print("In lsp_zero")
local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
	-- see :help lsp-zero-keybindings
	-- to learn the available actions
	lsp_zero.default_keymaps({buffer = bufnr})
end)

require('lspconfig').clangd.setup({})

lsp_zero.setup_servers({'clangd',})
