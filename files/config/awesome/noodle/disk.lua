local awful = require("awful")
local gears = require("gears")
local wibox = require("wibox")
local beautiful = require("beautiful")
local naughty = require("naughty")

-- Configuration
local update_interval = 600 -- in seconds

local active_color = beautiful.cpu_bar_active_color or "#5AA3CC"
local background_color = beautiful.cpu_bar_background_color or "#222222"
local progress_bar_width = dpi(215)

function get_disk(text, nb)

  function format_disk_info(label, bar)
    bar.forced_width = progress_bar_width
    bar.shape = gears.shape.rounded_bar
    bar.bar_shape = gears.shape.rounded_bar

    label.resize = true

    local w = wibox.widget{
      nil,
      {
        label,
        bar,
        spacing = dpi(5),
        layout = wibox.layout.align.vertical,
        expand = "none",
        layout = wibox.layout.fixed.vertical,
      },
      expand = "none",
      layout = wibox.layout.align.horizontal,
    }
    return w
  end
  local disk_bar = wibox.widget{
    max_value     = 100,
    value         = 50,
    forced_height = dpi(10),
    --margins       = {
      --top = dpi(8),
      --bottom = dpi(8),
    --},
    forced_width  = dpi(175),
    shape         = gears.shape.rounded_bar,
    bar_shape     = gears.shape.rounded_bar,
    color         = active_color,
    background_color = background_color,
    border_width  = 0,
    border_color  = beautiful.border_color,
    widget        = wibox.widget.progressbar,
  }

  local label = wibox.widget{
    text = "free disk space",
    align  = 'left',
    --valign = 'center',
    widget = wibox.widget.textbox,
    margins = {
      top = dpi(15)
    }
  }

  label.font = "sans 14"
  --local function update_widget(disk_space)
  --disk.markup = label .. " : " .. disk_space .. "B free"
  --end

  -- Use /dev/sdXY according to your setup
  --local disk_script_free = "bash -c \"df -k -h /dev/sda" .. nb .. " | tail -1 | awk '{print $4}'\""

  awesome.connect_signal("evil::disk".. nb .. "", function(value)
    local usage, full = string.gmatch(value, "(%w+)/(%w+)")()
    label.markup = text .. " : " .. value .. "G"
    disk_bar.max_value = tonumber(full)
    disk_bar.value = tonumber(usage)
  end)
  return format_disk_info(label, disk_bar)
end
return get_disk
