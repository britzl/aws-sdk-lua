-- String Utilities

local M = {}

--- from http://lua-users.org/wiki/StringRecipes
function M.urldecode(str)
  str = string.gsub (str, "+", " ")
  str = string.gsub (str, "%%(%x%x)", function(h) return string.char(tonumber(h,16)) end)
  str = string.gsub (str, "\r\n", "\n")
  return str
end

--- from http://lua-users.org/wiki/StringRecipes
function M.urlencode(str)
  if str then
    str = string.gsub (str, "\n", "\r\n")
    str = string.gsub (str, "([^%w %-%_%.%~])", function (c) return string.format ("%%%02X", string.byte(c)) end)
    str = string.gsub (str, " ", "+")
  end
  return str
end

--- http://lua-users.org/wiki/StringTrim
function M.trim(str)
	return str:match("^%s*(.-)%s*$")
end


function M.split(str, delimiter)	
	if str:find(delimiter) == nil then
		return { str }
	end
	local result = {}
	if delimiter == "" then
		for char in str:gmatch(".") do
			table.insert(result, char)
		end
	else
		local last_pos
		local pattern = "(.-)" .. delimiter .. "()"
		for part, pos in str:gmatch(pattern) do
			table.insert(result, part)
			last_pos = pos
		end
		if not last_pos then
			table.insert(result, s)
		else
			table.insert(result, str:sub(last_pos))
		end
	end
	return result
end

return M
