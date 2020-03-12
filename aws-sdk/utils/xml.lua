local xml2lua = require 'aws-sdk.xml2lua.xml2lua'
local handler = require 'aws-sdk.xml2lua.xmlhandler.tree'

local M = {}

function M.parse(s)
        handler = handler:new()
        local parser = xml2lua.parser(handler)
        parser:parse(s)
        return handler.root
end

return M
