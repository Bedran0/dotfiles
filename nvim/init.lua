-- Lazy.nvim bootstrap
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Temel ayarlar
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.termguicolors = true
vim.opt.cursorline = true

-- Pluginler
require("lazy").setup({
  -- Renk teması
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  -- Dosya gezgini
  { "nvim-tree/nvim-tree.lua", dependencies = { "nvim-tree/nvim-web-devicons" } },
  -- Alt status bar
  { "nvim-lualine/lualine.nvim", dependencies = { "nvim-tree/nvim-web-devicons" } },
  -- Telescope
  { "nvim-telescope/telescope.nvim", dependencies = { "nvim-lua/plenary.nvim" } },
})

-- Tema
vim.cmd.colorscheme("catppuccin-mocha")

-- Nvim-tree
require("nvim-tree").setup()

-- Lualine
require("lualine").setup({ options = { theme = "catppuccin" } })
