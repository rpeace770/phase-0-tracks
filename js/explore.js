//make a function with a string parameter
//reverse the string
//start with a blank variable
//add last letter into the blank string first
//continue adding letters from the end into the blank string


function reverse(word) {
	var backwardString = '';
	var maxNumber = word.length - 1;
		for (i = maxNumber; i >= 0; i--) {
			backwardString += word[i];
		}
		return backwardString;
}

var backwards = reverse("computer");

if (1 != 2) {
	console.log(backwards);
}
else {
	console.log("Nope")
}