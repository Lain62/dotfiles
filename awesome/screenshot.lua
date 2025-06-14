local awful = require("awful")

local screenshot = {}

function screenshot:fullscreen()
	awful.spawn.with_shell("maim | xclip -selection clipboard -t image/png")
end

function screenshot:area()
	awful.spawn.with_shell("maim --select | xclip -selection clipboard -t image/png")
end

return screenshot
