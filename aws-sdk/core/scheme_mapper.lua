--- Get the HTTPS or HTTP sceheme from a URL

local M = {}

-- Get the scheme from a string containing a URL
function M.from_string(s)
	assert(s, "You must provide a string")
	s = s:gsub("^%s*(.-)%s*$", "%1"):lower()
	if s == "https" then
		return "https"
	else
		return "http"
	end
end

return M
