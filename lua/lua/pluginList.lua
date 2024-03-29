local packer = require("packer")
local use = packer.use

-- using { } for using different branch , loading plugin with certain commands etc
return packer.startup(
    function()
    use "NLKNguyen/papercolor-theme"
    use "wbthomason/packer.nvim"


    -- use { "rcarriga/vim-ultest", requires = {"vim-test/vim-test"}, run = ":UpdateRemotePlugins" }
    use { "ms-jpq/chadtree"}

    -- use "kyazdani42/nvim-tree.lua"


    use "kyazdani42/nvim-web-devicons"
    use "sbdchd/neoformat"
    use "onsails/lspkind-nvim"
    use "nvim-treesitter/nvim-treesitter"
    use 'nvim-treesitter/nvim-treesitter-refactor' 
    use "nvim-treesitter/playground"
    use "ryanoasis/vim-devicons"
    use "nvim-telescope/telescope.nvim"
    use "nvim-telescope/telescope-media-files.nvim"
    use "nvim-lua/plenary.nvim"
    use "nvim-lua/popup.nvim"
    use "ntpeters/vim-better-whitespace"

   use "vim-scripts/LargeFile"

   use "schickling/vim-bufonly"

   use "talek/obvious-resize"

   use "lewis6991/gitsigns.nvim"

   use "terrortylor/nvim-comment"
   -- use "rmagatti/auto-session"



    use { 'tamton-aquib/staline.nvim' }


    use "windwp/nvim-autopairs"
    use "alvan/vim-closetag"
    use 'ethanholz/nvim-lastplace'

    use 'MattesGroeger/vim-bookmarks'


    
    use "rafamadriz/friendly-snippets"
    -- use "pechorin/any-jump.vim"
    use "neovim/nvim-lspconfig"
    
    
    use { "tzachar/cmp-tabnine", run = "./install.sh" }
    
    use {
      "hrsh7th/nvim-cmp",
      requires = {
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-nvim-lsp",
        "quangnguyen30192/cmp-nvim-ultisnips",
        "hrsh7th/cmp-nvim-lua",
        "octaltree/cmp-look",
        "hrsh7th/cmp-path",
        "hrsh7th/cmp-calc",
        "f3fora/cmp-spell",
        "hrsh7th/cmp-emoji",
        "ray-x/cmp-treesitter",
        "hrsh7th/cmp-cmdline",
        "hrsh7th/cmp-nvim-lsp-document-symbol",
        "hrsh7th/vim-vsnip",
        "hrsh7th/cmp-vsnip"
      },
      config = function()
        require("config.cmp").setup()
      end,
    }
    
    
    
    


    --debug

     use {
	'williamboman/nvim-lsp-installer',
    }

    use {'ray-x/navigator.lua', requires = {'ray-x/guihua.lua', run = 'cd lua/fzy && make'}}

    use "vim-test/vim-test"
    use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}
     use "lukas-reineke/indent-blankline.nvim"
    
    use "liuchengxu/vista.vim"
    use "Pocco81/DAPInstall.nvim"
    use "mfussenegger/nvim-dap"
    use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }

    use { "rcarriga/vim-ultest", requires = {"vim-test/vim-test"}, run = ":UpdateRemotePlugins" }

    use 'lewis6991/spellsitter.nvim'
    use 'pierreglaser/folding-nvim'


    end,
    {
        display = {
            border = {"┌", "─", "┐", "│", "┘", "─", "└", "│"}
        }
    }
)
