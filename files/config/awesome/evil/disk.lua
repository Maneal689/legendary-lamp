-- Provides:
-- evil::disk{n}
--      used percentage (integer)
local awful = require("awful")
local naughty = require("naughty")

local update_interval = 5

function watch_disk(nb)
  local disk_script = [[bash -c 'df -h /dev/sda]].. nb ..[[ | awk "/\/dev\/sda[0-9]+/ {printf \"%d/%d\", \$3, \$2}"']]

  awful.widget.watch(disk_script, update_interval, function(widget, stdout)
    local disk_usage = stdout
    disk_usage = string.gsub(disk_usage, '^%s*(.-)%s*$', '%1')

    awesome.emit_signal("evil::disk".. nb .. "", disk_usage)
  end)
end

return watch_disk
