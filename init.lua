require("Frost")
vim.opt.termguicolors = true

--Bootstrap Lazy plugin loader
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
--Lazy documentation suggests prepend, but append lets local config override default Lazy config for plguins such as tree-sitter
vim.opt.rtp:append(lazypath)

require("lazy").setup("plugins", {})
