local colors = {
  bg = '#000000',
  fg = '#cdaa7d',
	bg_faded = '#7d6d59',
	white = '#ffffff',
	orange = '#cf7044',
	blue = '#5b909a',
	grey_light_blue = '#bac4cf',
	yellow = '#f1c84b',
	darker_yellow = '#c78b3d',
	muted_purple ='#9b6f8d',
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
ghl('Comment',      { fg = colors.grey_light_blue, italic = true })
ghl({'String', 'Number' },       { fg = colors.orange })
ghl('Keyword',      { fg = colors.yellow })
ghl('Function',     { fg = colors.white, bold = true })
ghl({
	'Boolean',
}, { fg = colors.muted_purple, bold = true })
ghl({
	-- Block the default theme's foreground colors
	'@variable',
	'Type',
	'ModeMsg',
	'Operator',
	'Delimiter',
	'Special',
	'Punct',
	'@parameter',
	'@property', 	
}, { fg = colors.fg })
