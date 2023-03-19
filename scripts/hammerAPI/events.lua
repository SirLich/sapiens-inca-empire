--- Inca: events.lua

local mod = {
	loadOrder = 0
}

function mod:onload(events)
	local super_test = events.test
	events.test = function(self)
		mj:log("---")
		super_test()
		mj:log("---")
	end
end

return mod