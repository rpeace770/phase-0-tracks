var one = document.getElementById("one");
one.style.border = "10px solid blue";

function textAlign(event) {
	event.target.style.textAlign = "center";
}

var text = document.getElementById("two");
text.addEventListener("click", textAlign);
