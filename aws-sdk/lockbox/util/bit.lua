-- Workaround to support Lua 5.2 bit32 API with the LuaJIT bit one
if bit.rol and not bit.lrotate then
	bit.lrotate = bit.rol
end
if bit.ror and not bit.rrotate then
	bit.rrotate = bit.ror
end

return bit
