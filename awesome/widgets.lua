local util = require("util")
local wibox = require("wibox")
local gears = require("gears")
local awful = require("awful")
local theme = require("theme")

local widgets = {}

function widgets:new()
   local o = {}
   o.battery = wibox.widget.textbox()
   o.powerprofile = wibox.widget.textbox()
   o.volume = wibox.widget.textbox()
   setmetatable(o, self)
   self.__index = self

   self:battery_timer_init(o)
   self:powerprofile_init(o)
   self:volume_init(o)
   return o
end

function widgets.battery_to_icon(o)
   a = tonumber(o)
   if a > 80 then
      return "󱊣"
   elseif a > 60 then
      return "󱊢"
   elseif a > 40 then
      return "󱊡"
   else
      return "󰂎"
   end
end

function widgets:battery_timer_init(o)
   o.battery:set_font(theme.font)
   gears.timer {
      timeout = 10,
      call_now = true,
      autostart = true,
      callback = function()
         local capacity = util.run_cmd("cat /sys/class/power_supply/BAT1/capacity"):sub(1, -2)
         o.battery:set_text(o.battery_to_icon(capacity) .. " " ..  capacity .. "% ")         
      end
   }
end

function widgets.powerprofile_to_icon(o)
   if o == "performance" then
      return ""
   elseif o == "power-saver" then
      return " "
   elseif o == "balanced" then
      return " "
   end   
end

function widgets:powerprofile_init(o)
   local profile = util.run_cmd("powerprofilesctl get"):sub(1, -2)
   o.powerprofile:set_font(theme.font)
   o.powerprofile:set_text(" " .. o.powerprofile_to_icon(profile) .. " ")
   local a = function()
      local e = util.run_cmd("powerprofilesctl get"):sub(1, -2)
      if e == "performance" then
         util.run_cmd("powerprofilesctl set balanced")
         o.powerprofile:set_text(" " .. o.powerprofile_to_icon("balanced") .. " ")
      elseif e == "power-saver" then
         util.run_cmd("powerprofilesctl set performance")
         o.powerprofile:set_text(" " .. o.powerprofile_to_icon("performance") .. " ")
      elseif e == "balanced" then
         util.run_cmd("powerprofilesctl set power-saver")
         o.powerprofile:set_text(" " .. o.powerprofile_to_icon("power-saver") .. " ")
      end
     
   end
   o.powerprofile:connect_signal("button::press", a)
   -- local profile = 
   -- o.powerprofile:set_text(" "..profile)
end

function widgets.volume_to_icon(a)
   if a > 60 then
      return "󰕾"
   elseif a > 30 then
      return "󰖀"
   elseif a > 0 then
      return "󰕿"
   else
      return "󰝟"
   end
end

function widgets:volume_init(o)
   o.volume:set_font(theme.font)
   local a = function()
      awful.spawn("pavucontrol")
   end
   o.volume:connect_signal("button::press", a)
   gears.timer {
      timeout = 5,
      call_now = true,
      autostart = true,
      callback = function()
         local volume = tonumber(util.run_cmd("wpctl get-volume @DEFAULT_AUDIO_SINK@"):sub(9, -2))
         if type(volume) == "number" then
            volume = math.floor(volume * 100)
            o.volume:set_text(" " .. o.volume_to_icon(volume) .. " " .. volume)
         else
            o.volume:set_text(" 󰝟")
         end
         
      end
   }

end
-- wpctl get-volume @DEFAULT_AUDIO_SINK@
return widgets
