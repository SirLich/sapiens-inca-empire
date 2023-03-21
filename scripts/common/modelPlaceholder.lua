--- Inca: modelPlaceholder.lua
--- @author SirLich

-- Sapiens
local resource = mjrequire "common/resource"

local mod = {
    loadOrder = 1,
}

function mod:onload(modelPlaceholder)
    local super_initRemaps = modelPlaceholder.initRemaps

    modelPlaceholder.initRemaps = function()
        super_initRemaps()

        modelPlaceholder:addModel("totem", {
            { 
                multiKeyBase = "branch",
                multiCount = 2, 
                defaultModelName = "branch",
                resourceTypeIndex = resource.types.branch.index,
            },
            { 
                key = "rock_1",
                defaultModelName = "rock1",
            },
            {
                key = "branch_store",
                offsetToStorageBoxWalkableHeight = true,
            },
            {
                key = "stone_store",
                offsetToStorageBoxWalkableHeight = true,
            },
        })
    end
end

return mod