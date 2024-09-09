if true then
  return {}
end

return {
  -- add gruvbox
  { "dracula/vim" },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "dracula",
    },
  },
}
