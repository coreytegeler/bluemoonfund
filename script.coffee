jQuery(document).ready ($) ->
	$window = $(window)
	$body = $('body')
	$moonset = $('.moonset')
	$main = $moonset.find('main')
	$moonset.on 'scroll', (e) ->
		height = $moonset.innerHeight()
		scroll = $moonset.scrollTop()
		scrollHeight = $moonset[0].scrollHeight
		progress = scroll * 1 / (scrollHeight - height)
		
		blueOpacity = .5 - progress
		console.log blueOpacity
		$('.blue').css
			opacity: blueOpacity

		frontOpacity = 1 - progress
		$('.front').css
			opacity: frontOpacity
