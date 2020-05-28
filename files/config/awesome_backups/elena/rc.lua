--[[
   ___       ___       ___       ___       ___       ___       ___
  /\  \     /\__\     /\  \     /\  \     /\  \     /\__\     /\  \
 +::\  \   /:/\__\   /::\  \   /::\  \   /::\  \   /::L_L_   /::\  \
/::\:\__\ /:/:/\__\ /::\:\__\ /\:\:\__\ /:/\:\__\ /:/L:\__\ /::\:\__\
\/\::/  / \::/:/  / \:\:\/  / \:\:\/__/ \:\/:/  / \/_/:/  / \:\:\/  /
  /:/  /   \::/  /   \:\/  /   \::/  /   \::/  /    /:/  /   \:\/  /
  \/__/     \/__/     \/__/     \/__/     \/__/     \/__/     \/__/

-- >> The file that binds everything together.
--]]


local themes = {
    "manta",        -- 1 --
    "lovelace",     -- 2 --
    "skyfall",      -- 3 --
    "ephemeral",    -- 4 --
}
-- Change this number to use a different theme
local theme = themes[2]
-- ===================================================================
-- Affects the window appearance: titlebar, titlebar buttons...
local decoration_themes = {
    "lovelace",       -- 1 -- Standard titlebar with 3 buttons (close, max, min)
    "skyfall",        -- 2 -- No buttons, only title
    "ephemeral",      -- 3 -- Anti-aliased, with text-generated titlebar buttons
}
local decoration_theme = decoration_themes[1]
-- ===================================================================
-- Statusbar themes. Multiple bars can be declared in each theme.
local bar_themes = {
    "manta",        -- 1 -- Taglist, client counter, date, time, layout
    "lovelace",     -- 2 -- Start button, taglist, layout
    "skyfall",      -- 3 -- Weather, taglist, window buttons, pop-up tray
    "ephemeral",    -- 4 -- Taglist, start button, tasklist, and more buttons
}
local bar_theme = bar_themes[2]

-- ===================================================================
-- Affects which icon theme will be used by widgets that display image icons.
local icon_themes = {
    "linebit",        -- 1 --
    "drops",          -- 2 --
}
local icon_theme = icon_themes[2]
-- ===================================================================
local notification_themes = {
    "lovelace",       -- 1 --
    "ephemeral",      -- 2 --
}
local notification_theme = notification_themes[1]
-- ===================================================================
local exit_screen_themes = {
    "lovelace",      -- 1 -- Uses image icons
    "ephemeral",     -- 2 -- Uses text-generated icons (consumes less RAM)
}
local exit_screen_theme = exit_screen_themes[1]
-- ===================================================================
-- User variables and preferences
user = {
    -- >> Default applications <<
    terminal = "kitty -1",
    floating_terminal = "kitty -1",
    browser = "firefox-developer-edition",
    file_manager = "nautilus",
    tmux = "kitty -1 -e tmux new",
    tmux_a = "kitty -1 -e tmux a",
    editor = "kitty -1 --class editor -e vim",
    -- editor = "emacs",

    -- >> Search <<
    -- web_search_cmd = "exo-open https://duckduckgo.com/?q="
    web_search_cmd = "xdg-open https://duckduckgo.com/?q=",
    -- web_search_cmd = "exo-open https://www.google.com/search?q="

    -- >> User profile <<
    profile_picture = os.getenv("HOME").."/.config/awesome/profile.png",

    -- >> Music <<
    music_client = "kitty -1 --class music -e ncmpcpp",

    -- >> Screenshots <<
    -- Make sure the directory exists
    screenshot_dir = os.getenv("HOME") .. "/Pictures/Screenshots/",

    -- >> Email <<
    email_client = "kitty -1 --class email -e neomutt",

    -- >> Sidebar <<
    sidebar_hide_on_mouse_leave = true,
    sidebar_show_on_mouse_screen_edge = true,

    -- >> Lock screen <<
    -- You can set this to whatever you want or leave it empty in
    -- order to unlock with just the Enter key.
    -- lock_screen_password = "",
    lock_screen_password = "toor",

    -- >> Battery <<
    -- You will receive notifications when your battery reaches these
    -- levels.
    battery_threshold_low = 15,
    battery_threshold_critical = 5,

    -- >> Weather <<
    -- Get your key and find your city id at
    -- https://openweathermap.org/
    -- (You will need to make an account!)
    openweathermap_key = "78703050c4799167c7527e10781b166d",
    openweathermap_city_id = "6436699",
    -- > Use "metric" for Celcius, "imperial" for Fahrenheit
    weather_units = "metric",
}
-- ===================================================================


-- Jit
--pcall(function() jit.on() end)

-- Initialization
-- ===================================================================
-- Theme handling library
local beautiful = require("beautiful")
local xrdb = beautiful.xresources.get_current_theme()
-- Make dpi function global
dpi = beautiful.xresources.apply_dpi
-- Make xresources colors global
x = {
    --           xrdb variable      fallback
    background = xrdb.background or "#1D1F28",
    foreground = xrdb.foreground or "#FDFDFD",
    color0     = xrdb.color0     or "#282A36",
    color1     = xrdb.color1     or "#F37F97",
    color2     = xrdb.color2     or "#5ADECD",
    color3     = xrdb.color3     or "#F2A272",
    color4     = xrdb.color4     or "#8897F4",
    color5     = xrdb.color5     or "#C574DD",
    color6     = xrdb.color6     or "#79E6F3",
    color7     = xrdb.color7     or "#FDFDFD",
    color8     = xrdb.color8     or "#414458",
    color9     = xrdb.color9     or "#FF4971",
    color10    = xrdb.color10    or "#18E3C8",
    color11    = xrdb.color11    or "#FF8037",
    color12    = xrdb.color12    or "#556FFF",
    color13    = xrdb.color13    or "#B043D1",
    color14    = xrdb.color14    or "#3FDCEE",
    color15    = xrdb.color15    or "#BEBEC1",
}

-- Themes define colours, icons, fonts, window decorations and wallpapers
local theme_dir = os.getenv("HOME") .. "/.config/awesome/themes/" .. theme .. "/"
beautiful.init(theme_dir .. "theme.lua")
-- require(theme_dir .. "decorations.lua")
--beautiful.init(gears.filesystem.get_themes_dir() .. "default/theme.lua")

local gears = require("gears")
local awful = require("awful")
require("awful.autofocus")

-- Default notification library
local naughty = require("naughty")

-- Error handling
-- ===================================================================
naughty.connect_signal("request::display_error", function(message, startup)
    naughty.notification {
        urgency = "critical",
        title   = "Oops, an error happened"..(startup and " during startup!" or "!"),
        message = message
    }
end)

-- Features
-- ===================================================================
-- Initialize global icons variable and load icon theme
icons = require("icons")
icons.init(icon_theme)
-- Load helper functions
local helpers = require("helpers")
-- Initialize global app launching/focusing functions
require("apps")
-- Keybinds and mousebinds
local keys = require("keys")
-- Notifications
require("notifications")
notifications.init(notification_theme)
-- Window decorations
require("decorations")
decorations.init(decoration_theme)

-- >> Elements - Desktop components
-- Statusbar(s)
require("elemental.bar."..bar_theme)
-- Exit screen
require("elemental.exit_screen."..exit_screen_theme)
-- Sidebar
require("elemental.sidebar")
-- Dashboard (previously called: Start screen)
--require("elemental.dashboard")
-- Lock screen
-- Make sure to configure your password in the 'user' section above
require("elemental.lock_screen")
-- App drawer
--require("elemental.app_drawer")

-- >> Daemons
-- Most widgets that display system/external info depend on evil.
-- Make sure to initialize it last in order to allow all widgets to connect to
-- their needed evil signals.
require("evil")
-- ===================================================================
-- ===================================================================

-- Get screen geometry
-- I am using a single screen setup and I assume that screen geometry will not
-- change during the session.
screen_width = awful.screen.focused().geometry.width
screen_height = awful.screen.focused().geometry.height

-- Layouts
-- ===================================================================
-- Table of layouts to cover with awful.layout.inc, order matters.
awful.layout.layouts = {
    awful.layout.suit.spiral
    --awful.layout.suit.tile,
    --awful.layout.suit.floating,
    --awful.layout.suit.max,
    --awful.layout.suit.spiral.dwindle,
    --awful.layout.suit.tile.top,
    --awful.layout.suit.fair,
    --awful.layout.suit.fair.horizontal,
    --awful.layout.suit.tile.left,
    --awful.layout.suit.tile.bottom,
    --awful.layout.suit.max.fullscreen,
    --awful.layout.suit.corner.nw,
    --awful.layout.suit.magnifier,
    --awful.layout.suit.corner.ne,
    --awful.layout.suit.corner.sw,
    --awful.layout.suit.corner.se,
}

-- Wallpaper
-- ===================================================================
local function set_wallpaper(s)
    -- Wallpaper
	if beautiful.wallpaper then
		if type(beautiful.wallpaper) == "string" then
			if beautiful.wallpaper:sub(1, #"#") == "#" then
					gears.wallpaper.set(beautiful.wallpaper)
			elseif beautiful.wallpaper:sub(1, #"/") == "/" then
					gears.wallpaper.maximized(beautiful.wallpaper, s)
			end
		else
			beautiful.wallpaper(s)
		end
	end
end

-- Set wallpaper
--awful.screen.connect_for_each_screen(function(s)
     ----Wallpaper
    --set_wallpaper(s)
--end)

-- Re-set wallpaper when a screen's geometry changes (e.g. different resolution)
screen.connect_signal("property::geometry", set_wallpaper)

-- Tags
-- ===================================================================
awful.screen.connect_for_each_screen(function(s)
    -- Each screen has its own tag table.
    local l = awful.layout.suit -- Alias to save time :)
    -- Tag layouts
    local layouts = {
        l.spiral,
        l.spiral,
        l.spiral,
        l.spiral,
        l.spiral,
        l.spiral,
        l.spiral,
        l.spiral,
        l.spiral,
        l.spiral
    }

    -- Tag names
    local tagnames = beautiful.tagnames or { "1", "2", "3", "4", "5", "6", "7", "8", "9", "10" }
    -- Create all tags at once (without seperate configuration for each tag)
    awful.tag(tagnames, s, layouts)

end)

-- Determines how floating clients should be placed
local client_placement_f = awful.placement.no_overlap + awful.placement.no_offscreen

-- Rules
-- ===================================================================
-- Rules to apply to new clients (through the "manage" signal).
awful.rules.rules = {
    {
        -- All clients will match this rule.
        rule = { },
        properties = {
            border_width = beautiful.border_width,
            border_color = beautiful.border_normal,
            focus = awful.client.focus.filter,
            raise = true,
            keys = keys.clientkeys,
            buttons = keys.clientbuttons,
            -- screen = awful.screen.preferred,
            screen = awful.screen.focused,
            size_hints_honor = false,
            honor_workarea = true,
            honor_padding = true,
            -- placement = awful.placement.no_overlap+awful.placement.no_offscreen
        },
        callback = function (c)
            if not awesome.startup then
                -- If the layout is floating or there are no other visible clients
                -- Apply placement function
                if awful.layout.get(mouse.screen) ~= awful.layout.suit.floating or #mouse.screen.clients == 1 then
                    awful.placement.centered(c,{honor_padding = true, honor_workarea=true})
                else
                    client_placement_f(c, {honor_padding = true, honor_workarea=true, margins = beautiful.useless_gap * 2})
                end

                -- Hide titlebars if required by the theme
                if not beautiful.titlebars_enabled then
                    decorations.hide(c)
                end

            end
        end
    },

    -- Add titlebars to normal clients and dialogs
    {
        rule_any = { type = { "normal", "dialog" } },
        properties = { titlebars_enabled = true }
    },

    ---------------------------------------------
    -- Start application on specific workspace --
    ---------------------------------------------
    -- Browsing
    --{
        --rule_any = {
            --class = {
                --"Firefox",
                ---- "qutebrowser",
            --},
        --},
        --except_any = {
            --role = { "GtkFileChooserDialog" },
            --instance = { "Toolkit" },
            --type = { "dialog" }
        --},
        --properties = { screen = 1, tag = awful.screen.focused().tags[1] },
    --},

}
-- (Rules end here) ..................................................
-- ===================================================================

-- Signals
-- ===================================================================
-- Signal function to execute when a new client appears.
client.connect_signal("manage", function (c)
    if not awesome.startup then awful.client.setslave(c) end


end)
-- When a client starts up in fullscreen, resize it to cover the fullscreen a short moment later
-- Fixes wrong geometry when titlebars are enabled
client.connect_signal("manage", function(c)
    if c.fullscreen then
        gears.timer.delayed_call(function()
            if c.valid then
                c:geometry(c.screen.geometry)
            end
        end)
    end
end)

if beautiful.border_width > 0 then
    client.connect_signal("focus", function(c) c.border_color = beautiful.border_focus end)
    client.connect_signal("unfocus", function(c) c.border_color = beautiful.border_normal end)
end

-- dynamic wallpaper
screen.connect_signal("request::wallpaper", function(s)

	-- If wallpaper is a function, call it with the screen
	if beautiful.wallpaper then
		if type(beautiful.wallpaper) == "string" then
			if beautiful.wallpaper:sub(1, #"#") == "#" then
					gears.wallpaper.set(beautiful.wallpaper)
			elseif beautiful.wallpaper:sub(1, #"/") == "/" then
					gears.wallpaper.maximized(beautiful.wallpaper, s)
			end
		else
			beautiful.wallpaper(s)
		end
	end

end)
-- Set mouse resize mode (live or after)
awful.mouse.resize.set_mode("live")

-- Restore geometry for floating clients
-- (for example after swapping from tiling mode to floating mode)
-- ==============================================================
tag.connect_signal('property::layout', function(t)
    for k, c in ipairs(t:clients()) do
        if awful.layout.get(mouse.screen) == awful.layout.suit.floating then
            -- Geometry x = 0 and y = 0 most probably means that the client's
            -- floating_geometry has not been set yet.
            -- If that is the case, don't change their geometry
            -- TODO does this affect clients that are really placed in 0,0 ?
            local cgeo = awful.client.property.get(c, 'floating_geometry')
            if cgeo and not (cgeo.x == 0 and cgeo.y == 0) then
                c:geometry(awful.client.property.get(c, 'floating_geometry'))
            end
            --c:geometry(awful.client.property.get(c, 'floating_geometry'))
        end
    end
end)

client.connect_signal('manage', function(c)
    if awful.layout.get(mouse.screen) == awful.layout.suit.floating then
        awful.client.property.set(c, 'floating_geometry', c:geometry())
    end
end)

client.connect_signal('property::geometry', function(c)
    if awful.layout.get(mouse.screen) == awful.layout.suit.floating then
        awful.client.property.set(c, 'floating_geometry', c:geometry())
    end
end)

-- ==============================================================
-- ==============================================================

-- Make rofi able to unminimize minimized clients
client.connect_signal("request::activate", function(c, context, hints)
    if not awesome.startup then
        if c.minimized then
            c.minimized = false
        end
        awful.ewmh.activate(c, context, hints)
    end
end)

-- -- Focus urgent clients automatically
-- client.connect_signal("property::urgent", function(c)
--     c.minimized = false
--     c:jump_to()
-- end)

-- Disconnect the client ability to request different size and position
-- Breaks fullscreen and maximized
-- client.disconnect_signal("request::geometry", awful.ewmh.client_geometry_requests)
-- client.disconnect_signal("request::geometry", awful.ewmh.geometry)

-- Startup applications
-- Runs your autostart.sh script, which should include all the commands you
-- would like to run every time AwesomeWM restarts
-- ===================================================================
awful.spawn.with_shell( os.getenv("HOME") .. "/.config/awesome/autostart.sh")

-- Garbage collection
-- Enable for lower memory consumption
-- ===================================================================

-- collectgarbage("setpause", 160)
-- collectgarbage("setstepmul", 400)

collectgarbage("setpause", 110)
collectgarbage("setstepmul", 1000)
