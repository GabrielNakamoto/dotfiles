require("mason").setup();
require("mason-lspconfig").setup({
	ensure_installed = {
		"clangd",
		"lua_ls",
        "glsl_analyzer"
	}
})

local on_attach = function(_, _)
	-- vim.keymap.set('n', 'gd', vim.lsp.buf.definition(), {})
	-- vim.keymap.set('n', 'gi', vim.lsp.buf.implementation(), {})
	-- vim.keymap.set('n', 'K', vim.lsp.buf.hover(), {})
end

require('lspconfig').clangd.setup{
  on_attach = on_attach,
  cmd = {
    "/usr/bin/clangd",
    "--background-index",
    "--pch-storage=memory",
    "--all-scopes-completion",
    "--pretty",
    "--header-insertion=never",
    "-j=4",
    "--inlay-hints",
    "--header-insertion-decorators",
    "--function-arg-placeholders",
    "--completion-style=detailed"
  },
  filetypes = {"c", "cpp", "objc", "objcpp"},
  root_dir = require('lspconfig').util.root_pattern("src"),
  init_option = { fallbackFlags = {  "-std=c++2a"  } },
  capabilities = capabilities
}

require("lspconfig").lua_ls.setup {
	on_attach = on_attach
}

require("lspconfig").glsl_analyzer.setup {
    on_attach = on_attach
}


