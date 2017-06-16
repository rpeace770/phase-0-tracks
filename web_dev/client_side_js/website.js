// change border of header
var one = document.getElementById("header");
one.style.border = "10px solid blue";

// use loop to change all the paragraph borders
var borders = document.querySelectorAll('p.one');
for (var i = 0; i < borders.length; i++) {
	borders[i].style.textAlign = "center";
}

//create new paragraph and add to document
var newParagraph = document.createElement('p');
var newText = document.createTextNode('Click Here for Rocko pic!');
newParagraph.append(newText);
var lastParagraph = document.getElementsByTagName('body')[0];
lastParagraph.appendChild(newParagraph);

//event listener to highlight border when hovering over paragraph 2
function highlight(event) {
	event.target.style.borderColor = "red";
}

borders[1].addEventListener("mouseover", highlight);

//reveal picture
function picture(event) {
	var image = document.getElementById("cat");
	image.style["display"] = "block";
}

newParagraph.addEventListener("click", picture);