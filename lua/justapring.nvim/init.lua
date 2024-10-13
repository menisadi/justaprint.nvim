-- lua/justaprint.nvim/core.lua
local M = {}

function M.hello()
	print("Hello, Neovim!")
end

-- Create a command that calls the hello function
vim.api.nvim_create_user_command("PrintHello", M.hello, {})
print("justaprint.nvim loaded")

return M
