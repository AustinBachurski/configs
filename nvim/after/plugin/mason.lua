require("mason-lspconfig").setup {
    ensure_installed = {
        "bashls", -- Bash
        "clangd", -- C++
        "cmake", -- CMake
        "csharp_ls", -- C#
        "cssls", -- CSS
        "eslint", -- JavaScript
        "html", -- HTML
        "java_language_server", -- Java
        "jsonls", -- Json
        "lua_ls", -- Lua
        "marksman", -- Markdown
        "pyright", -- Python
        "rust_analyzer", -- Rust
        "taplo", -- TOML
        "tsserver", -- TypeScript
        "sqlls", -- SQL
        "yamlls", -- YAML
        "zls", -- Zig
    },
}
