-- use :h nvui for configuration

local NV = {}

NV.base46 = {
    theme = 'rosepine',
    transparency = true
}

NV.ui = {
    statusline = { theme = 'default' },
    cmp = {
        icons_left = true,    -- only for non-atom styles!
        style = "flat_light", -- default/flat_light/flat_dark/atom/atom_colored
        format_colors = {
            tailwind = true,  -- will work for css lsp too
            icon = "󱓻",
        },
    }
}



return NV;
