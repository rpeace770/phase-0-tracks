// insert paragraph and delay the display of the first paragraph
$('p:first').before('<p>Inserting here.</p>').hide().delay(500).fadeIn(1400);

//function to add words to each paragraph.
$(function() {
	$('p').each(function() {
		var classes = "New sentence."
		$(this).append(' <span class="order">' + classes + '</span>');
	});
});

//function to remove paragraph when its clicked on
$(function() {
	$('p').on("click", function() {
		$(this).animate({
			paddingLeft: '+=780'
		}, 1200, function(){
			$(this).fadeOut(500);
			// $(this).remove();
		});
	});
});

//function that hides the header when clicked on
$(function() {
	$('h1').on("click", function() {
		$(this).slideUp();
	});
});