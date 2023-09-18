require('mason').setup()
require('mason-lspconfig').setup()
require('lsp_signature').setup()

lspconfig = require('lspconfig')
util = require('lspconfig/util')

lspconfig.gopls.setup {
    cmd = {'gopls', 'serve'},
    filetypes = {'go', 'gomod'},
    root_dir = util.root_pattern("go.work", "go.mod", ".git"),
    settings = {
      gopls = {
        analyses = {
          unusedparams = true,
        },
        staticcheck = true,
        buildFlags = {'-tags=integration'},
      },
    },
}
