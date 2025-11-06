local awful = require("awful")
local naughty = require("naughty")
local util = require("util")

local screenshot = {}

function screenshot.fullscreen()
   awful.spawn.with_line_callback(util.shell_cmd("maim | xclip -selection clipboard -t image/png"), {
      exit = function() 
         awful.spawn.with_shell("notify-send \"Screenshoted the screen and put into clipboard\"")
      end
   })
end

function screenshot.window()
   awful.spawn.with_line_callback(util.shell_cmd("maim --window $(xdotool getactivewindow) | xclip -selection clipboard -t image/png"), {
      exit = function() 
         awful.spawn.with_shell("notify-send \"Screenshoted the window and put into clipboard\"")
      end
   })
end

function screenshot.area()
   awful.spawn.with_line_callback(util.shell_cmd("maim --select | xclip -selection clipboard -t image/png"), {
      exit = function() 
         awful.spawn.with_shell("notify-send \"Screenshoted an area and put into clipboard\"")
      end
   })
end

return screenshot
