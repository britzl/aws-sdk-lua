local M = {}


function M.from_string(s)
	s = s:gsub("^%s*(.-)%s*$", "%1"):lower()
	if s == "https" then
		return "https"
	else
		return "http"
	end 
end

return M
