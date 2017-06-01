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

var words = ["cat", "paint", "happiness", "no", "miraculous"];
longestWord(words);





