-- lua/justaprint.nvim.lua
local M = {}

function M.hello()
	print("Hello, Neovim!")
end

function M.setup()
	print("Hello, Neovim!")

	-- Create a command that calls the hello function
	vim.api.nvim_create_user_command("PrintHello", M.hello, {})

	-- Create a keymap that calls the hello function
	vim.api.nvim_set_keymap("n", "<leader>ph", "<cmd>PrintHello<cr>", { noremap = true, silent = true })
end

return M
