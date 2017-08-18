local M = {}

--- The http_request function to use when calling AWS service endpoints
-- Replace this function with a function that matches what your engine
-- provides
-- @param uri
-- @param method GET|POST etc
-- @param headers Request headers (key-value pair table)
-- @param post_data Optional data to send (string)
-- @param callback Callback function to invoke when request has completed. The
-- callback function must take a single argument consisting of a response table.
-- The response table is expected to have the following fields:
--   * status - Status code (number)
--   * response - The response data (string)
--   * header - Response headers (table, key-value pairs)
function M.http_request(uri, method, headers, post_data, callback)
	print("No-op http_request. Replace with your own implementation")
	print(uri, method, headers, post_data, callback)
end


return M
