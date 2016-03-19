$(function() {
	$('.user_box dd').on('mouseenter', function() {
		$(this).find('span').show();
	}).on('mouseleave', function() {
		$(this).find('span').hide();
	});
});