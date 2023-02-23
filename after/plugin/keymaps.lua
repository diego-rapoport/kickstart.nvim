local opts = {noremap = true, silent = true}
local term_opts = {silent = true}

local keymap = vim.api.nvim_set_keymap
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Atalhos --
local n = "n"
local i = "i"
local v = "v"
local t = "t"

-- Normal --
-- keymap(n, "siw", "viwp", opts) -- substitui do clipboard na palavra que está em cima

-- Navegação de janelas --
keymap(n, "<C-h>", "<C-w><C-h>", opts)
keymap(n, "<C-j>", "<C-w><C-j>", opts)
keymap(n, "<C-k>", "<C-w><C-k>", opts)
keymap(n, "<C-l>", "<C-w><C-l>", opts)

-- Navegação de buffers --
--[[ keymap(n, "<S-l>", ":bnext<cr>", opts)
keymap(n, "<S-h>", ":bprevious<cr>", opts) ]]
keymap(n, "<S-l>", ":BufferLineCycleNext<cr>", opts)
keymap(n, "<S-h>", ":BufferLineCyclePrev<cr>", opts)

-- Redimensionamento --
keymap(n, "<M-j>", ":resize +2<cr>", opts)
keymap(n, "<M-k>", ":resize -2<cr>", opts)
keymap(n, "<M-l>", ":vertical resize +2<cr>", opts)
keymap(n, "<M-h>", ":vertical resize -2<cr>", opts)

-- Salvar & Sair --
keymap(n, "<C-s>", ":w<cr>", opts)      -- salva o arquivo atual
keymap(n, "<M-s>", ":wa<cr>", opts)     -- salva todos os arquivos do buffer
keymap(n, "<M-q>", ":wqa<cr>", opts)    -- salva todos os arquivos do buffer e sai
-- keymap(n, "<leader>q", ":qa<cr>", opts) -- sair de neovim completamente

-- Telescope --
keymap(n, "<leader><leader>", ":lua require('telescope').extensions.find_pickers.find_pickers()<cr>", opts)

-- Terminais --
keymap(n, "<F2>", ":1ToggleTerm direction=horizontal<cr>", opts)
keymap(n, "<F3>", ":2ToggleTerm direction=horizontal<cr>", opts)
keymap(n, "<F4>", ":3ToggleTerm direction=horizontal<cr>", opts)
keymap(n, "<F5>", ":4ToggleTerm direction=horizontal<cr>", opts)

-- Insert --
keymap(i, "jk", "<ESC>", opts)
-- keymap(i, "<C-q>", "[[<Cmd>wq<CR>]]", opts)

-- Visual --
keymap(v, "p", '"_dP', opts) -- cola texto em cima da seleção sem mudar o clipboard

-- Indentação
keymap(v, "<", "<gv", opts)
keymap(v, ">", ">gv", opts)

-- Mover blocos de texto
keymap(v, "<A-j>", ":m .+1<cr>==", opts)
keymap(v, "<A-k>", ":m .-2<cr>==", opts)

-- Terminal --
keymap(t, '<esc>', [[<C-\><C-n>]], term_opts)
keymap(t, 'jk', [[<C-\><C-n>]], term_opts)
keymap(t, '<C-h>', [[<Cmd>wincmd h<CR>]], term_opts)
keymap(t, '<C-j>', [[<Cmd>wincmd j<CR>]], term_opts)
keymap(t, '<C-k>', [[<Cmd>wincmd k<CR>]], term_opts)
keymap(t, '<C-l>', [[<Cmd>wincmd l<CR>]], term_opts)
