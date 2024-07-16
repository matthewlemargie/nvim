local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)

require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = { "lua_ls", "rust_analyzer", "jedi_language_server" },
  handlers = {
    lsp_zero.default_setup,
  },
})

require'lspconfig'.clangd.setup{
    cmd = { "clangd", "--header-insertion=never" }, -- Any additional clangd flags
    filetypes = { "c", "cpp", "objc", "objcpp" },
    root_dir = require'lspconfig'.util.root_pattern("compile_commands.json", "compile_flags.txt", ".git"),
    settings = {
        clangd = {
            args = {},
        },
    },
}
