local content_encoder = require "aws-sdk.core.content_encoder"


local M = {}


function M.post(uri, input, headers, metadata, cb)
	local post_data = content_encoder.encode(metadata.protocol, input)
	http.request(uri, "POST", function(self, id, response)
		if response.status >= 200 and response.status < 300 then
			cb(json.decode(response.response))
		else
			pprint(response)
			cb(false, "Error")
		end
	end, headers, post_data)

end



function M.from_http_method(method)
	if method == "POST" then
		return M.post
	elseif method == "GET" then
		return M.get
	elseif method == "DELETE" then
		return M.delete
	elseif method == "PUT" then
		return M.put
	elseif method == "HEAD" then
		return M.head
	else
		return nil, "Unknown method"
	end
end

return M
