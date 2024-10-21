vim.g.mapleader = " "
vim.keymap.set("n", "ZZ", "<NOP>")
vim.keymap.set("n", "ZQ", "<NOP>")
vim.keymap.set("i", "jj", "<Esc>")
vim.keymap.set("n", "x", '"_x')
vim.keymap.set("n", "X", '"_X')

local Util = require("lazyvim.util")

vim.keymap.set("n", "<leader>ft", function()
  Util.terminal(nil, { border = "rounded" })
end, { desc = "toggleterm with border" })

vim.keymap.set("n", "<leader>gg", function()
  Util.terminal({ "lazygit" }, { border = "rounded", cwd = Util.root() })
end, { desc = "gitlazy with border" })

vim.keymap.set("n", "<C-\\>", function()
  Util.terminal({ "lazydocker" }, { border = "rounded", cwd = vim.fn.expand("%:p:h") })
end, { desc = "Lazydocker (current dir)" })
