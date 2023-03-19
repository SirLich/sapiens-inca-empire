--- Inca: buildable.lua
--- @author SirLich

local mod = {
	loadOrder = 1
}

-- Sapiens
local constructable = mjrequire "common/constructable"
local resource = mjrequire "common/resource"
local skill = mjrequire "common/skill"
local plan = mjrequire "common/plan"
local action = mjrequire "common/action"

local bringAndMoveSequence = {
    {
        constructableSequenceTypeIndex = constructable.sequenceTypes.bringResources.index,
    },
    {
        constructableSequenceTypeIndex = constructable.sequenceTypes.bringTools.index,
    },
    {
        constructableSequenceTypeIndex = constructable.sequenceTypes.moveComponents.index,
    },
}

function mod:onload(buildable)
	buildable:addBuildable("totem", {
		modelName = "totem",
		inProgressGameObjectTypeKey = "build_totem",
		finalGameObjectTypeKey = "totem",
		name = "Totem",
		plural = "Totems",
		summary = "Build a Totem",
		buildCompletionPlanIndex = plan.types.light.index,
		classification = constructable.classifications.build.index,
		allowBuildEvenWhenDark = false,
	
		skills = {
			required = skill.types.basicBuilding.index,
		},
	
		allowYTranslation = false,
		allowXZRotation = true,
		noBuildUnderWater = true,
	
		buildSequence = bringAndMoveSequence,
		
		requiredResources = {
			{
				type = resource.types.branch.index,
				count = 2,
				afterAction = {
					actionTypeIndex = action.types.inspect.index,
					durationWithoutSkill = 2.0,
				}
			},
			{
				type = resource.types.rock.index,
				count = 1,
				afterAction = {
					actionTypeIndex = action.types.inspect.index,
					durationWithoutSkill = 2.0,
				}
			},
		}
	})
end

return mod