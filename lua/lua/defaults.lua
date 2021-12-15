local scopes = {o = vim.o, b = vim.bo, w = vim.wo}

local function opt(scope, key, value)
    scopes[scope][key] = value
    if scope ~= "o" then
        scopes["o"][key] = value
    end
end
-- o option
-- buffer optn
-- w windows
	

opt("o", "termguicolors", true)
vim.cmd("colorscheme PaperColor")
opt("o", "clipboard", "unnamedplus")
opt("o", "cmdheight", 1)

opt("w", "number", true)
opt("o", "wildmenu", true)
opt("o", "numberwidth", 2)
opt("w", "signcolumn", "yes")


vim.o.undofile = true
vim.o.undodir = "/home/leonelsoriano/.vimundo/"
vim.o.history = 750
opt("o", "ruler", true)
opt("o", "ignorecase", true)
opt("o", "hlsearch", true)
opt("o", "incsearch", true)
opt("o", "magic", true)
vim.o.showmatch = true

vim.o.errorbells = false
vim.o.visualbell = false

opt("o", "backup", false)
opt("o", "wb", false)
opt("o", "swapfile", false)
opt("o", "expandtab", true)



opt("o", "foldmethod", "syntax")
vim.o.hidden = false

vim.o.smarttab = true

vim.o.shiftwidth = 2
vim.o.tabstop = 2
vim.o.lbr = true
vim.o.tw = 500

-- Auto indent
vim.o.ai = true
-- smart indent
vim.o.si = true

-- Wrap lines
vim.o.wrap = true

vim.o.nu = true
-- Always show the status line
vim.o.laststatus = 2

-- extra lines
vim.opt.scrolloff = 10

vim.o.mouse = "a"



vim.cmd([[if exists('+colorcolumn')
  set colorcolumn=80
else
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80.\+', -1)
endif]])



vim.cmd([[if has("gui_running")
    set guioptions-=T
    set guioptions+=e
    set t_Co=256
    set guitablabel=%M\ %t
endif]])

--vim.cmd([[augroup remember_folds
--  autocmd!
--  autocmd BufWinLeave *.* mkview
--  autocmd BufWinEnter *.* silent! loadview
--
--augroup END]])


CONFIG_PATH = vim.fn.stdpath('config')
DATA_PATH = vim.fn.stdpath('data')
CACHE_PATH = vim.fn.stdpath('cache')



O = {
    auto_close_tree = 0,
    auto_complete = true,
    colorscheme = 'lunar',
    hidden_files = true,
    wrap_lines = false,
    number = true,
    relative_number = false,
    shell = 'bash',
	timeoutlen = 100,
    nvim_tree_disable_netrw = 0,
    extras = false,

    -- @usage pass a table with your desired languages
    treesitter = {
        ensure_installed = "all",
        ignore_install = {"haskell"},
        highlight = {enabled = true},
        playground = {enabled = true},
        rainbow = {enabled = true}
    },

    database = {save_location = '~/.config/nvcode_db', auto_execute = 1},
    python = {
        linter = '',
        -- @usage can be 'yapf', 'black'
        formatter = '',
        autoformat = false,
        isort = false,
        diagnostics = {virtual_text = {spacing = 0, prefix = ""}, signs = true, underline = true},
		analysis = {type_checking = "basic", auto_search_paths = true, use_library_code_types = true}
    },
    dart = {sdk_path = '/usr/lib/dart/bin/snapshots/analysis_server.dart.snapshot'},
    lua = {
        -- @usage can be 'lua-format'
        formatter = '',
        autoformat = false,
        diagnostics = {virtual_text = {spacing = 0, prefix = ""}, signs = true, underline = true}
    },
    sh = {
        -- @usage can be 'shellcheck'
        linter = '',
        -- @usage can be 'shfmt'
        formatter = '',
        autoformat = false,
        diagnostics = {virtual_text = {spacing = 0, prefix = ""}, signs = true, underline = true}
    },
    tsserver = {
        -- @usage can be 'eslint'
        linter = 'eslint',
        -- @usage can be 'prettier'
        formatter = '',
        autoformat = false,
        diagnostics = {virtual_text = {spacing = 0, prefix = ""}, signs = true, underline = true}
    },
    json = {
        -- @usage can be 'prettier'
        formatter = '',
        autoformat = false,
        diagnostics = {virtual_text = {spacing = 0, prefix = ""}, signs = true, underline = true}
    },
    tailwindls = {filetypes = {'html', 'css', 'scss', 'javascript', 'javascriptreact', 'typescript', 'typescriptreact'}},
    clang = {diagnostics = {virtual_text = {spacing = 0, prefix = ""}, signs = true, underline = true}},
	ruby = {
		diagnostics = {virtualtext = {spacing = 0, prefix = ""}, signs = true, underline = true},
		filetypes = {'rb', 'erb', 'rakefile'}
	},
    go = {},
    -- css = {formatter = '', autoformat = false, virtual_text = true},
    -- json = {formatter = '', autoformat = false, virtual_text = true}
}














