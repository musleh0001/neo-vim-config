local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities
local lspconfig = require("lspconfig")
local util = require "lspconfig/util"

local servers = {
  "pyright",
  "gopls"
}

for _, lsp in ipairs(servers) do
  if lsp == "gopls" then
    lspconfig[lsp].setup({
      on_attach = on_attach,
      capabilities = capabilities,
      cmd = {"gopls", "serve"},
      filetypes = {"go", "gomod", "gowork", "gotmpl"},
      root_dir = util.root_pattern("go.work", "go.mod", ".git"),
      settings = {
        gopls = {
          completeUnimported = true,
          usePlaceholders = true,
          analyses = {
            unusedparams = true
          }
        }
      }
    })
  else
    lspconfig[lsp].setup({
      on_attach = on_attach,
      capabilities = capabilities,
      filetypes = {"python"},
    })
  end
end
