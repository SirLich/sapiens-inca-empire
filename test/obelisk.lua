local obelisk = {
	meta = {
		author = "SirLich"
	},
	description = {
		identifier = "inca:lightsaber",
		name = "Lightsaber",
		plural = "Lightsaber",
	},
	components = {
		hs_object = {
			physics = true,
			model = "lightsaber",
		},
		hs_resource = {
			create_resource = true,
		},
		hs_decoration = {
			enabled = true
		},
		hs_storage_link = {
			identifier = "inca:lightsaber_storage"
		},
		hs_tool = {
			tool_usage = {
				{
					tool_type = "weaponKnife",
					damage = 1
				}
			}
		}
	}
}