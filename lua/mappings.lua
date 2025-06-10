require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map({"i", "v"}, "jk", "<ESC>")
map("n", "<leader>e", "<cmd>NvimTreeToggle<cr>")
map("n", "<S-l>", "<cmd>bnext<cr>")
map("n", "<S-h>", "<cmd>bprevious<cr>")
map("n", "<C-h>", "<cmd>NvimTreeFocus<cr>")
map("n", "<C-l>", function()
  if vim.fn.bufname():match 'NvimTree_' then
    vim.cmd.wincmd 'p'
  end
end
)

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
