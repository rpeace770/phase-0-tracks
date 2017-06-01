//METHODS

// write function that returns longest word or phrase in an array
// .length gives the length of a string
// make sample array
// loop through array and get length of each string
// sort words in order from least to greatest length
// print greatest length

function longestWord(array) {
	var longest = ""
	//loop through each word and get length of the string
	// compare to longest string set each time
	for(var i = 0; i < array.length; i++) {
		if (array[i].length > longest.length) {
			longest = array[i];
		}
	}
	console.log(longest)
};

//write a function that takes two objects and checks to see if the objects share at least one key-value pair.

//yourFunction({name: "Steven", age: 54}, {name: "Tamir", age: 54});
//evaluates to true

function share(object, object2) {
	//check object key/value1 with object2 key/value1
	//check object key/value1 with object2 key/value2
	//check object key/value2 with object2 key/value1
	//check object key/value2 with object2 key/value2
	// if (object[key] == object2[key]) {
	// 	true
	// }
	// else if (object[key] == object2[value]) {
	// 	true
	// }
	// else if (object[value] == object2[key]) {
	// 	true
	// }
	// else if (object[value] == object2[value]) {
	// 	true
	// }
	// else {
	// 	false
	// }
	console.log(Object.values(object));
};


//DRIVER CODE

var words = ["cat", "paint", "happiness", "no", "miraculous"];
longestWord(words);

share({name: "Steven", age: 54}, {name: "Tamir", age: 54});

