print("Loading colorscheme config")

return {
  "shaunsingh/nord/nvim"
  config = function()
    print("setting to nord:")
    vim.cmd("colorscheme nord")
  end
}

print("colorscheme config loaded")
