--- Inca: events.lua

local mod = {
	loadOrder = 0
}

function mod:onload(events)
	local super_test = events.test
	events.test = function(self)
		super_test()
	end
end

return mod