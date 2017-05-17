office = {
	kitchen: [
		"microwave", "fridge", "sink", "stove"
	],
	studio: {
		people: 4,
		dogs: "Penny"
	},
	main: {
		people: 17,
		dogs: [
			"Kosar",
			"Jimmy",
			"Vera",
			"Rufus",
			"Ranger",
			"Molly"
		]
	}
}

puts office[:main][:dogs].sort

puts office[:studio][:people] + office[:main][:people]

puts office[:main][:dogs][3]