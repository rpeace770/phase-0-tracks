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

function key_share(object, object2) {
	var keys = Object.keys(object);
	var keys2 = Object.keys(object2);
	var values = Object.values(object);
	var values2 = Object.values(object2);

	//check object key/value1 with object2 key/value1
	//check object key/value1 with object2 key/value2
	//check object key/value2 with object2 key/value1
	//check object key/value2 with object2 key/value2

	if (keys[0] === keys2[0] && values[0] === values2[0]) {
		true
	} 
	else if (keys[0] === keys2[1] && values[0] === values2[1]) {
		true
	}
	else if (keys[1] === keys2[0] && values[1] === values2[0]) {
		true
	}
	else if (keys[1] === keys2[1] && values[1] === values2[1]) {
		true
	}
	else {
		false
	}
	
};


function test_data(integer) {
	//build array of strings according to integer
	//min 1 letter and max 10 letter
	//generate random length for each word
	// Math.floor((Math.random() * 10) + 1);
}

//DRIVER CODE

var words = ["cat", "paint", "happiness", "no", "miraculous"];
longestWord(words);

key_share({name: "Steven", age: 54}, {name: "Tamir", age: 54});

