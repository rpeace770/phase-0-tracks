// write function that returns longest word or phrase in an array
// .length gives the length of a string
// make sample array
// loop through array and get length of each string
// put first word into blank array
// put second word into blank array depending on whether it is larger or smaller
// repeat for the other words
// sort words in order from least to greatest length
// print greatest length

var words = ["cat", "paint", "happiness", "no"];
var copy = {}
//loop through each word and get length of the string

words.forEach(function(item) {
	var obj = {item: item.length};
	console.log(obj);
});

// console.log(copy);



// words.forEach(function(item) {
// 	copy.push(item.length);
// });

// copy.sort(function(a, b) {
// 	return a - b;
// });

// words.forEach(function(item) {
// 	if (item.length == copy.last) {
// 		console.log(item);
// 	}
// });

