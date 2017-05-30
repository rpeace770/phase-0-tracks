//make a function with a string parameter
//reverse the string
//start with a blank variable
//add last letter into the blank string first
//continue adding letters from the end into the blank string


function reverse(word) {
	backward_string = ""
	for (i = word.length; i >= 0; i--) {
	backward_string += word[i];
	}
	console.log(backward_string);
}

// var backwards = reverse("hello");

// if (1 == 1) {
// 	console.log(backwards);
// }
// else {
// 	console.log("Nope!");
// }

reverse("hello");