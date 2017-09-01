local M = {}

function M.sync(fn)
	assert(fn, "You must provide a function to synchronize")
	local co = coroutine.running()
	assert(co, "You must run this from within a coroutine")

	local results

	local async
	fn(function(...)
		results = {...}
		results.length = select("#", ...)
		if async == true then
			coroutine.resume(co)
		else
			async = false
		end
	end)
	if async == nil then
		async = true
		coroutine.yield()
	end
	return unpack(results, 1, results.length)
end



return setmetatable(M, {
	__call = function(self, ...)
		return M.sync(...)
	end
})
