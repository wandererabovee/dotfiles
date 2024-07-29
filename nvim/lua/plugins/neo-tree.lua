return {
  'nvim-neo-tree/neo-tree.nvim', 
  branch = 'v2.x',
  requires = {
    'nvim-lua/plenary.nvim'
    'MunifTanjim/nui.nvim'
  },
  config = function()
    require('neo-tree').setup({
    })
  end
}

