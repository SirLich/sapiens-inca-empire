local potato_2 = {
	description = {
		identifier = "inca:potato_2",
		name = "POTATO 2",
		plural = "POTATOES 2"
	},
	components = {
		hs_object = {
			model = "potat" .. "o",
			physics = true,
			scale = 1
		},
		hs_resource = {
			create_resource = true
		},
		hs_storage_link = {
			identifier = "inca:potato_storage"
		},
		hs_decoration = {
			enabled = true
		}
	}
}

return potato_2