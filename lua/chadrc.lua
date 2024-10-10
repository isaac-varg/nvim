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
    },
}

NV.nvdash = {
    load_on_startup = true,
    header = {
        "                                                   ",
        "                                                   ",
        "                                                   ",
        "       ██████                        ██████       ",
        "      ██████████      ██████      ██████████      ",
        "      ███     ██████████████████████     ███      ",
        "      ███        █████  ██  █████        ███      ",
        "      ███           ██  ██  ███          ███      ",
        "      ███               ██               ███      ",
        "       ███              ██              ███       ",
        "       ███     ██████        ██████     ███       ",
        "   ████████    ██  ██        ██  ██    ████████   ",
        "   ███████████          ███         ███████████   ",
        "     ███    ██        ██████        ██    ███     ",
        "     ████████         ██████         ████████     ",
        "   ██████████     ██    ██    ██      █████████   ",
        "      ███         ███ ██████ ███         ███      ",
        "       ███         ██████ █████         ███       ",
        "        ████                          ████        ",
        "          █████                    █████          ",
        "             ████████████████████████              ",
        "                  ███████████████                  ",
        "                                                   ",
        "                                                   ",
        "                                                   ",
        "                                                   "
    },
    buttons = {
        { txt = "  Find File", keys = "<leader> ff", cmd = "Telescope find_files" },
        { txt = "  Recent Files", keys = "<leader> fo", cmd = "Telescope oldfiles" },
        -- more... check nvconfig.lua file for full list of buttons
    },

}



return NV;
