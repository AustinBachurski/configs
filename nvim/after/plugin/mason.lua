require("mason-lspconfig").setup {
    ensure_installed = {
        "clangd",
        "csharp_ls",
        "quick_lint_js",
        "pyright",
        "lua_ls",
    },
}
