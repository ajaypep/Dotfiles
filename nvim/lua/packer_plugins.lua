require("packer").startup(function()
    use "wbthomason/packer.nvim"
    use 'dracula/vim'
    use 'dense-analysis/ale'
    use 'sbdchd/neoformat'
    use 'neovim/nvim-lspconfig'
    use {
  'nvim-lualine/lualine.nvim',
  requires = { 'kyazdani42/nvim-web-devicons', opt = true }
}

end)
