--- Content Encoder module to transform service request data into the correct
-- format
local json = require "aws-sdk.utils.json"

local M = {}

--- Encode data using a specific protocol.
-- @param protocol Currently only supports "json"
-- @param data The data to encode
-- @return The encoded data
function M.encode(protocol, data)
	assert(protocol, "You must provide a protocol")
	assert(data, "You must provide some data to encode")
	if protocol == "json" then
		local _, encoded_data = assert(pcall(json.encode, data))
		if encoded_data == "[]" then
			encoded_data = "{}"
		end
		return encoded_data
	end
	return data
end


return M
