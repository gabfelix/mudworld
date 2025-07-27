local colors = {
  bg = '#000000',
  fg = '#cdaa7d',
	bg_faded = '#7d6d59',
	white = '#ffffff',
	orange = '#cf7044',
	idk = '#5b909a'
}

local ghl = function(groupnames, opts)
	if type(groupnames) == "string" then
		vim.api.nvim_set_hl(0, groupnames, opts)
	else
		for _, group in ipairs(groupnames) do
			vim.api.nvim_set_hl(0, group, opts)
		end
	end
end

ghl('Normal', { fg = colors.fg, bg = colors.bg })
ghl('StatusLine', { fg = colors.bg, bg = colors.fg }) -- Inverted 
ghl('StatusLineNC', { fg = colors.bg_faded, bg = colors.fg }) -- Inverted, faded
ghl('LineNr', { fg = colors.bg_faded })
ghl('CursorLineNr', { fg = colors.fg, bold = true })

-- syntax
ghl('Comment',      { fg = colors.fg, italic = true })
ghl('Constant',     { fg = colors.orange })
ghl('Keyword',      { fg = colors.fg, bold = true })
ghl('Function',     { fg = colors.white, bold = true })
ghl('Type',         { fg = colors.fg })
ghl('Boolean',      { fg = colors.fg, bold = true })
ghl('Number',       { fg = colors.fg })
ghl('Operator',     { fg = colors.fg })
ghl('Delimiter',    { fg = colors.fg })
ghl('Special',      { fg = colors.fg })
ghl('Punct',       { fg = colors.fg })
ghl("@variable", { fg = colors.white })
-- ghl("@variable.builtin", { fg = '#ffffff', italic = true })
ghl("@parameter", { fg = colors.fg })
ghl("@property", { fg = colors.fg })
