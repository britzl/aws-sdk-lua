local json = require "aws-sdk.utils.json"

local M = {}

function M.encode(protocol, data)
	if protocol == "json" then
		local _, encoded_data = assert(pcall(json.encode, data))
		return encoded_data
	end
	return data
end


return M
