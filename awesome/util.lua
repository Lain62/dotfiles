local awful = require("awful")
local util = {}

function util.shell_cmd(cmd)
   return {awful.util.shell, "-c", cmd}
end

function util.run_cmd(command)
	local prog = io.popen(command)
	local result = prog:read('*all')
	prog:close()
	return result
end

return util
