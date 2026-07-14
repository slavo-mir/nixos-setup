vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.autoindent = true

vim.opt.number = true
vim.opt.relativenumber = true

local data_dir = vim.fn.stdpath("data")

vim.opt.backup = true
vim.opt.writebackup = true
vim.opt.backupdir = data_dir .. "/backup//"

vim.opt.undofile = true
vim.opt.undodir = data_dir .. "/undo//"

vim.opt.swapfile = true
vim.opt.directory = data_dir .. "/swap//"

for _, dir in ipairs({ "/backup", "/undo", "/swap" }) do
  local path = data_dir .. dir
  if vim.fn.isdirectory(path) == 0 then
    vim.fn.mkdir(path, "p")
  end
end

vim.opt.mouse = "a"
vim.opt.clipboard = "unnamedplus"
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.incsearch = true
vim.opt.hlsearch = true
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.cursorline = true
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.updatetime = 250
vim.opt.timeoutlen = 400
vim.opt.wrap = false
vim.opt.termguicolors = true
vim.opt.confirm = true
vim.opt.completeopt = { "menuone", "noselect" }

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>w", "<cmd>w<CR>", { desc = "Save file" })
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Clear search highlight" })
vim.keymap.set("n", "<leader>e", "<cmd>Ex<CR>", { desc = "Open netrw" })

vim.cmd.colorscheme("theme")
