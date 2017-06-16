// insert paragraph and delay the display of the first paragraph
$('p:first').before('<p>Inserting here</p>').hide().delay(500).fadeIn(1400);

//function to add words to each paragraph.
$(function() {
	$('p').each(function() {
		var classes = "New sentence."
		$(this).append(' <span class="order">' + classes + '</span>');
	});
});

