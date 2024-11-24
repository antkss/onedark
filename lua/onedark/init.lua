local M = {}
vim.opt.termguicolors=true
local nvim_home = vim.fn.stdpath("config")
function M.file_exists(file)
    local f = io.open(file, "r")
    if f then
        io.close(f)
        return true
    else
        return false
    end
end
local c = require('onedark.palette')["dark"]
if(M.file_exists(nvim_home .. "/lua/config/one.lua")) then
    c = require("config.one")["dark"]
end
require("onedark.vim")
function M.setup()
	if vim.o.background == 'light' then
	  vim.api.nvim_set_hl(0, "Normal", { bg = c.bg0, fg = '#000000' })
	else
	  vim.api.nvim_set_hl(0, "Normal", { bg = c.bg0, fg = '#ffffff' })
	end
	vim.api.nvim_set_hl(0, "Visual", { bg = c.bg3 })
	vim.api.nvim_set_hl(0, "Terminal", { fg = c.fg, bg = c.bg0 })
	vim.api.nvim_set_hl(0, "EndOfBuffer", { fg = c.grey, bg = nil })
	vim.api.nvim_set_hl(0, "LineNr", { fg = c.pr })
	vim.api.nvim_set_hl(0, "ErrorMsg", { fg = c.red, bg = nil })
	vim.api.nvim_set_hl(0, "NonText", { fg = c.grey })
	vim.api.nvim_set_hl(0, "Pmenu", { fg = c.fg, bg = c.bg0 })
	vim.api.nvim_set_hl(0, "Question", { fg = c.yellow })
	vim.api.nvim_set_hl(0, "NormalFloat", { fg = c.fg, bg = c.bg0 })
	vim.api.nvim_set_hl(0, "SignColumn", { bg = nil })
	vim.api.nvim_set_hl(0, "TabLine", { bg = nil })
	vim.api.nvim_set_hl(0, "MatchParen", { bg = c.grey })
	vim.api.nvim_set_hl(0, "MiniIndentscopeSymbol", { fg = c.grey })
	vim.api.nvim_set_hl(0, "CocMenuSel", { ctermfg = 0, bg = "#383838", underline = true })
	vim.api.nvim_set_hl(0, "Conceal", { bg = 0, fg = c.grey })
	vim.api.nvim_set_hl(0, "Visual", { bg = c.fg, fg = c.bg0 })
end

return M
