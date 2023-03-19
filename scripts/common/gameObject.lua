--- Inca: gameObject.lua
--- @author SriLich

-- Math
local mjm = mjrequire "common/mjm"
local vec3 = mjm.vec3

local mod = {
    loadOrder = 1,
}

function mod:onload(gameObject)

	gameObject:addGameObject("totem", {
		name = "Totem",
		modelName = "totem",
		scale = 1.0,
		isCraftArea = true,
		ignoreBuildRay = true,
		hasPhysics = true,
		isBuiltObject = true,
		isPathFindingCollider = true,
		preventGrassAndSnow = true,
		disallowAnyCollisionsOnPlacement = true,
		sapienLookAtOffset = vec3(0.0,mj:mToP(0.5),0.0),
		markerPositions = {
			{ 
				worldOffset = vec3(0.0, mj:mToP(0.8), 0.0)
			}
		},
	})

	gameObject:addGameObject("build_totem", {
		modelName = "totem",
		scale = 1.0,
		hasPhysics = true,
		isInProgressBuildObject = true,
		disallowAnyCollisionsOnPlacement = true,
		preventGrassAndSnow = true,
		ignoreBuildRay = true,
		objectViewCameraOffsetFunction = function(object)
			return vec3(0.0,0.5,1.0)
		end,
		markerPositions = {
			{ 
				worldOffset = vec3(0.0, mj:mToP(0.8), 0.0)
			}
		}
	})
end

return mod