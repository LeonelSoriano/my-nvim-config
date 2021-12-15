vim.g.mapleader = '`'
require "pluginList"
require "defaults"


-- require "top-bufferline"

-- require "nvimTree"

vim.opt.termguicolors = true

require("nvim-autopairs").setup()
require('spellsitter').setup()

require "telescope-nvim"
require'nvim-lastplace'.setup{}

require "compe-completion"
require('staline').setup{}


require('nvim_comment').setup{}


require('gitsigns').setup()


require("nvim-lspconfig").config()

function on_attach_callback(client, bufnr)
  -- If you use completion-nvim/diagnostic-nvim, uncomment those two lines.
  require('diagnostic').on_attach()
  require('completion').on_attach()
  require('folding').on_attach()

end

-- require('auto-session').setup()

-- require('lsp')
require('lsp.bash-ls')
require('lsp.clangd')
require('lsp.cmake-ls')
require('lsp.css-ls')
require('lsp.dart-ls')
require('lsp.docker-ls')
require('lsp.efm-general-ls')
require('lsp.elm-ls')
require('lsp.emmet-ls')
require('lsp.graphql-ls')
require('lsp.go-ls')
require('lsp.html-ls')
require('lsp.json-ls')
-- require('lsp.js-ts-ls')
require('lsp.kotlin-ls')
-- require('lsp.latex-ls')
-- require('lsp.lua-ls')
-- require('lsp.php-ls')
-- require('lsp.python-ls')
-- require('lsp.ruby-ls')
-- require('lsp.rust-ls')
-- require('lsp.svelte-ls')
-- require('lsp.terraform-ls')
-- require('lsp.tailwindcss-ls')
-- require('lsp.vim-ls')
-- require('lsp.vue-ls')
require('lsp.yaml-ls')
-- require('lsp.elixir-ls')

local tabnine = require('cmp_tabnine.config')
tabnine:setup({
	max_lines = 1000;
	max_num_results = 20;
	sort = true;
	run_on_every_keystroke = true;
	snippet_placeholder = '..';
	ignored_file_types = { -- default is not to ignore
		-- uncomment to ignore in lua:
		-- lua = true
	};
})

local dap, dapui = require('dap'), require('dapui')                                                                                                
dap.listeners.after.event_initialized['dapui_config'] = function() dapui.open() end                                                                
dap.listeners.before.event_terminated['dapui_config'] = function() dapui.close() end                                                               
dap.listeners.before.event_exited['dapui_config'] = function() dapui.close() end




local dap_install = require("dap-install")
dap_install.config("jsnode", {})
local dap = require('dap')
dap.adapters.jsnode = {
  type = 'executable',
  command = 'npm run build && node',
  args = {os.getenv('HOME') .. '/dev/microsoft/vscode-node-debug2/out/src/nodeDebug.js'},
}
dap.configurations.typescript = {
  {
    type = 'node2',
    runtimeExecutable = "/home/leonelsoriano/.nvm/versions/node/v12.14.1/bin/node",
    request = "launch",
    program = '/home/leonelsoriano/dev/js/falabella/DTE/document-colombian/int-rep-folios/src/main.ts',
    cwd = '/home/leonelsoriano/dev/js/falabella/DTE/document-colombian/int-rep-folios',
    sourceMaps = true,
    console = 'integratedTerminal',
    outFiles = {"/home/leonelsoriano/dev/js/falabella/DTE/document-colombian/int-rep-folios/dist/**/*.js"},
    env = { ["NODE_ENV"] = "development" }
  },
}


require("dapui").setup({
  icons = { expanded = "▾", collapsed = "▸" },
  mappings = {
    -- Use a table to apply multiple mappings
    expand = { "<CR>", "<2-LeftMouse>" },
    open = "o",
    remove = "d",
    edit = "e",
    repl = "r",
  },
  sidebar = {

    -- You can change the order of elements in the sidebar
    elements = {
      -- Provide as ID strings or tables with "id" and "size" keys
      {
        id = "scopes",
        size = 0.25, -- Can be float or integer > 1
      },
      { id = "breakpoints", size = 0.25 },
      { id = "stacks", size = 0.25 },
      { id = "watches", size = 00.25 },
    },
    size = 40,
    position = "left", -- Can be "left", "right", "top", "bottom"
  },
  tray = {
    open_on_start = false,
    elements = { "repl" },
    size = 1,
    position = "bottom", -- Can be "left", "right", "top", "bottom"
  },
  floating = {
    max_height = nil, -- These can be integers or a float between 0 and 1.
    max_width = nil, -- Floats will be treated as percentage of your screen.
    mappings = {
      close = { "q", "<Esc>" },
    },
  },
  windows = { indent = 1 },
})




require('bufferline').setup {
  options = {
numbers =  "buffer_id" ,
    --- @deprecated, please specify numbers as a function to customize the styling
    close_command = "bdelete! %d",       -- can be a string | function, see "Mouse actions"
    right_mouse_command = "bdelete! %d", -- can be a string | function, see "Mouse actions"
    left_mouse_command = "buffer %d",    -- can be a string | function, see "Mouse actions"
    middle_mouse_command = nil,          -- can be a string | function, see "Mouse actions"
    -- NOTE: this plugin is designed with this icon in mind,
    -- and so changing this is NOT recommended, this is intended
    -- as an escape hatch for people who cannot bear it for whatever reason
    indicator_icon = '▎',
    buffer_close_icon = '',
    modified_icon = '●',
    close_icon = '',
    left_trunc_marker = '',
    right_trunc_marker = '',
    --- name_formatter can be used to change the buffer's label in the bufferline.
    --- Please note some names can/will break the
    --- bufferline so use this at your discretion knowing that it has
    --- some limitations that will *NOT* be fixed.
    name_formatter = function(buf)  -- buf contains a "name", "path" and "bufnr"
      -- remove extension from markdown files for example
      if buf.name:match('%.md') then
        return vim.fn.fnamemodify(buf.name, ':t:r')
      end
    end,
    max_name_length = 18,
    max_prefix_length = 15, -- prefix used when a buffer is de-duplicated
    tab_size = 18,
    diagnostics = "nvim_lsp" ,
    diagnostics_update_in_insert = false,
    diagnostics_indicator = function(count, level, diagnostics_dict, context)
      return "("..count..")"
    end,
    -- NOTE: this will be called a lot so don't do any heavy processing here
    custom_filter = function(buf_number)
      -- filter out filetypes you don't want to see
      if vim.bo[buf_number].filetype ~= "<i-dont-want-to-see-this>" then
        return true
      end
      -- filter out by buffer name
      if vim.fn.bufname(buf_number) ~= "<buffer-name-I-dont-want>" then
        return true
      end
      -- filter out based on arbitrary rules
      -- e.g. filter out vim wiki buffer from tabline in your work repo
      if vim.fn.getcwd() == "<work-repo>" and vim.bo[buf_number].filetype ~= "wiki" then
        return true
      end
    end,
    offsets = {filetype = "NvimTree", text = "File Explorer" },
    show_buffer_icons = true , -- disable filetype icons for buffers
    show_buffer_close_icons = true ,
    show_close_icon = true ,
    show_tab_indicators = true ,
    persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
    -- can also be a table containing 2 custom separators
    -- [focused and unfocused]. eg: { '|', '|' }
    separator_style =  { 'any', 'any' }
  }
}



vim.opt.listchars = {
    space = "⋅",
    eol = "↴",
}
require'navigator'.setup()

require("indent_blankline").setup {}


require'cmp'.setup {
    snippet = {
      expand = function(args)
        -- For `vsnip` user.
        vim.fn["vsnip#anonymous"](args.body)
      end,
    },
  sources = {
    { name = 'nvim_lsp' },
    { name = 'buffer' },
    { name = 'vsnip' }
  }
}
-- The nvim-cmp almost supports LSP's capabilities so You should advertise it to LSP servers..
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

-- The following example advertise capabilities to `clangd`.
require'lspconfig'.clangd.setup {
  capabilities = capabilities,
}


-- local chadtree_settings = { options = { session = false} }
-- vim.api.nvim_set_var("chadtree_settings", chadtree_settings)

require "mappings"
