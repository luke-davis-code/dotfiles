vim.lsp.enable("lua_ls")

vim.lsp.enable("clangd")

vim.lsp.enable("vue_ls")

vim.lsp.config("ts_ls", {
    init_options = {
        plugins = {
            {
                name = "@vue/typescript-plugin",
                location = vim.fn.stdpath("data")
                    .. "/mason/packages/vue-language-server/node_modules/@vue/language-server",
                languages = { "vue" },
            },
        },
    },
    filetypes = {
        "typescript",
        "javascript",
        "javascriptreact",
        "typescriptreact",
        "vue",
    },
})
vim.lsp.enable("ts_ls")

vim.lsp.enable("eslint")

vim.lsp.enable("html")

vim.lsp.enable("hls")

vim.lsp.enable("jdtls")

vim.lsp.config("laravel_lsp", {
    cmd = { "laravel-lsp" },
    filetypes = { "php", "blade" },
    root_dir = function(bufnr, on_dir)
        local root = vim.fs.root(bufnr, "artisan")

        if root then
            on_dir(root)
        end
    end,
})
vim.lsp.enable("laravel_lsp")

vim.diagnostic.config({
    virtual_text = true,
})
