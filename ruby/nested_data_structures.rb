office = {
	kitchen: [
		"microwave",
		"sink",
		"stove",
		fridge: [
			"beer",
			"cook",
			"regular"
		]
	],
	studio: {
		people: 4,
		dogs: {
			Penny: "Comfort Retriever"
		}
	},
	main: {
		people: 17,
		dogs: {
			Kosar: "Golden Retriever",
			Jimmy: "Japanese Chin",
			Vera: "Japanese Chin",
			Rufus: "Ridgeback",
			Ranger: "Bassett Hound",
			Molly: "Labrador"
		}
	}
}

puts office[:main][:dogs].sort

puts office[:studio][:people] + office[:main][:people]

puts office[:main][:dogs][:Ranger]

office[:kitchen].push("toaster")
puts office[:kitchen]