vim.keymap.set("n", "<leader>n", vim.cmd.Ex)
vim.keymap.set("n", "<localleader>x", vim.cmd.q)
vim.keymap.set("n", "<leader>t", ':tabnew | :Ex<CR>')

-- keymap toggle virtual text diagnostics
vim.keymap.set("n", "<leader>vd",
	":lua vim.diagnostic.config({virtual_text = not vim.diagnostic.config().virtual_text})<CR>")

-- highlight Comment in code and then back to grey
vim.keymap.set("n", "<localleader>cc", ":hi! link Comment DraculaGreenBold<CR>")
vim.keymap.set("n", "<localleader>cd", ":hi! link Comment DraculaComment<CR>")

-- keymap toggle spell check
vim.keymap.set("n", "<leader>sp", ":setlocal spell!<CR>")
vim.keymap.set("n", "<leader>st", ":belowright split term://bash<CR>")

-- fugitive
vim.keymap.set("n", "<leader>gs", vim.cmd.Git)
vim.keymap.set("n", "<leader>gl", vim.cmd.Gclog)

-- dap
local dap = require 'dap'
vim.keymap.set("n", "<localleader>dc", dap.continue, { desc = 'Debug: Start/Continue' })
vim.keymap.set("n", "<localleader>do", dap.step_over, { desc = 'Debug: Step Over' })
vim.keymap.set("n", "<localleader>di", dap.step_into, { desc = 'Debug: Step Into' })
vim.keymap.set("n", "<localleader>dO", dap.step_out, { desc = 'Debug: Step Out' })
-- vim.keymap.set("n", "<localleader>dr", dap.restart, { desc = 'Debug: Restart' })
vim.keymap.set("n", "<localleader>dr", function()
	vim.cmd.update()
	dap.run_last()
end, { desc = 'Debug: Restart' })

vim.keymap.set("n", "<localleader>b", dap.toggle_breakpoint,
	{ desc = 'Debug: Toggle Breakpoint' })
vim.keymap.set('n', '<localleader>B', function()
	dap.set_breakpoint(vim.fn.input 'Breakpoint condition: ')
end, { desc = 'Debug: Set Breakpoint' })

-- copilot
-- vim.g.copilot_no_tab_map = true
-- vim.keymap.set("i", "<localleader><Tab>", 'copilot#Accept("<CR>")',
--      { noremap = true, silent = true, expr = true, replace_keycodes = false })
-- vim.keymap.set("n", "<localleader>co", ":vert bo Copilot<CR>")
-- vim.keymap.set("i", "<localleader>co", ":vert bo Copilot<CR>")
-- -- toggle copilot
-- vim.keymap.set("n", "<localleader>cd", ":Copilot disable<CR>")
-- vim.keymap.set("n", "<localleader>ce", ":Copilot enable<CR>")
--

return {}
