local M = {}

 local function map(mode, lhs, rhs, opts)
    local options = {noremap = true}
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end


M.config = function()

        local opts = {noremap = true, silent = true}

        map("n", "gD", "<Cmd>lua vim.lsp.buf.declaration()<CR>", opts)
        map("n", "gd", "<Cmd>lua vim.lsp.buf.definition()<CR>", opts)
        map("n", "K", "<Cmd>lua vim.lsp.buf.hover()<CR>", opts)
        map("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
        map("n", "<C-k>", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
        map("n", "<space>wa", "<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>", opts)
        map("n", "<space>wr", "<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>", opts)
        map("n", "<space>wl", "<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>", opts)
        map("n", "<space>D", "<cmd>lua vim.lsp.buf.type_definition()<CR>", opts)
        map("n", "<space>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", opts)
       	map("n", "<space>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)
        map("n", "<space>rn", "<cmd>lua require('navigator.rename').rename()<CR>", opts)
        
        
        map("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
        map("n", "<space>e", "<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>", opts)
        map("n", "[d", "<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>", opts)
        map("n", "]d", "<cmd>lua vim.lsp.diagnostic.goto_next()<CR>", opts)
        map("n", "<space>q", "<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>", opts)
        
        map("n", "<space>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", opts)
        map("n", "<space>oi", "<cmd>lua vim.lsp.buf.code_action({ diagnostics = {}, only = { 'source.organizeImports' } })<CR>", opts)



    function on_attach(client, bufnr)
        local function buf_set_keymap(...)
            vim.api.nvim_buf_set_keymap(bufnr, ...)
        end
        local function buf_set_option(...)
            vim.api.nvim_buf_set_option(bufnr, ...)
        end

        buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")

        -- Mappings.
        local opts = {noremap = true, silent = true}

        buf_set_keymap("n", "gD", "<Cmd>lua vim.lsp.buf.declaration()<CR>", opts)
        buf_set_keymap("n", "gd", "<Cmd>lua vim.lsp.buf.definition()<CR>", opts)
        buf_set_keymap("n", "K", "<Cmd>lua vim.lsp.buf.hover()<CR>", opts)
        buf_set_keymap("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
        buf_set_keymap("n", "<C-k>", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
        buf_set_keymap("n", "<space>wa", "<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>", opts)
        buf_set_keymap("n", "<space>wr", "<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>", opts)
        buf_set_keymap("n", "<space>wl", "<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>", opts)
        buf_set_keymap("n", "<space>D", "<cmd>lua vim.lsp.buf.type_definition()<CR>", opts)
        --buf_set_keymap("n", "<space>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", opts)
        
        buf_set_keymap("n", "<space>rn", "<cmd>lua require('navigator.rename').rename()<CR>", opts)
        
        
        buf_set_keymap("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
        buf_set_keymap("n", "<space>e", "<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>", opts)
        buf_set_keymap("n", "[d", "<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>", opts)
        buf_set_keymap("n", "]d", "<cmd>lua vim.lsp.diagnostic.goto_next()<CR>", opts)
        buf_set_keymap("n", "<space>q", "<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>", opts)
        
        buf_set_keymap("n", "<space>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", opts)
        buf_set_keymap("n", "<space>oi", "<cmd>lua vim.lsp.buf.code_action({ diagnostics = {}, only = { 'source.organizeImports' } })<CR>", opts)

		

        -- Set some keybinds conditional on server capabilities
        if client.resolved_capabilities.document_formatting then
            buf_set_keymap("n", "<space>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)
        elseif client.resolved_capabilities.document_range_formatting then
           buf_set_keymap("n", "<space>f", "<cmd>lua vim.lsp.buf.range_formatting()<CR>", opts)
        end
    end

    -- lspInstall + lspconfig stuff

    local function setup_servers()
local lsp_installer = require("nvim-lsp-installer")

-- Register a handler that will be called for all installed servers.
-- Alternatively, you may also register handlers on specific server instances instead (see example below).
lsp_installer.on_server_ready(function(server)
    local opts = {}

    -- (optional) Customize the options passed to the server
    -- if server.name == "tsserver" then
    --     opts.root_dir = function() ... end
    -- end

    -- This setup() function is exactly the same as lspconfig's setup function.
    -- Refer to https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
    server:setup(opts)
end)
    end

    setup_servers()

    -- replace the default lsp diagnostic letters with prettier symbols
    vim.fn.sign_define("LspDiagnosticsSignError", {text = "", numhl = "LspDiagnosticsDefaultError"})
    vim.fn.sign_define("LspDiagnosticsSignWarning", {text = "", numhl = "LspDiagnosticsDefaultWarning"})
    vim.fn.sign_define("LspDiagnosticsSignInformation", {text = "", numhl = "LspDiagnosticsDefaultInformation"})
    vim.fn.sign_define("LspDiagnosticsSignHint", {text = "", numhl = "LspDiagnosticsDefaultHint"})
end

return M
