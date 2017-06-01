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
	return longest
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
		return true
	} 
	else if (keys[0] === keys2[1] && values[0] === values2[1]) {
		return true
	}
	else if (keys[1] === keys2[0] && values[1] === values2[0]) {
		return true
	}
	else if (keys[1] === keys2[1] && values[1] === values2[1]) {
		return true
	}
	else {
		return false
	}
	
};


function test_data(integer) {
	//loop to make integer number of words
	word_array = []
	for(i = 0; i < integer; i++) {
		var alphabet = "abcdefghijklmnopqrstuvwxyz"
		//build array of strings according to integer
		//min 1 letter and max 10 letter
		//generate random length for each word
		var word = []
		//Math.random selects a random number between 0 and 1
		//multiply the decimal by the highest number in the chosen range and add one to account for 0
		//math.floor rounds down to the nearest whole number
		//loop for creating words 1-10 letters long with random letters
		for(j = 0; j < Math.floor((Math.random() * 10) + 1); j++) {
			word.push(alphabet.charAt(Math.floor(Math.random() * 26)));
			var random_word = word.join("");
		}
		word_array.push(random_word);
	}
	return word_array;
}

//DRIVER CODE

var words = ["cat", "paint", "happiness", "no", "miraculous"];
longestWord(words);

key_share({name: "Steven", age: 54}, {name: "Tamir", age: 54});

for(i = 0; i < 10; i++) {
	var longest_array = test_data(3);
	console.log(longest_array);
	var result = longestWord(longest_array);
	console.log(result);
};

//LOOP NOT WORKING, FIX BEFORE TURN IN



