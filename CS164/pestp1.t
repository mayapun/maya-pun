var img1, count
fun init(){


	html("<center>")
	button("Scold", funScold)
	button("Feed", funFeed)
	button("Noise", funNoise)
	html("</center>")

	count : 0 
	img1 : makeimg()
	setimg(img1, "relax_puppy.jpg")
	html(.img1)
	html("<br>")
	button("Click on it!", function)
}
fun function(){
	count : .count % 5
	if (.count == 0) {
		setimg(img1, "happy_puppy.jpg")
		html(.img1)
		count : .count + 1
	}
	else if (.count == 1){
		setimg(img1, "movietime_puppy.jpg")
		html(.img1)
		count : .count + 1
	}
	else if (.count == 2){
		setimg(img1, "angry_puppy.jpg")
		html(.img1)
		count : .count + 1
	}
	else if (.count == 3){
		setimg(img1, "sad_puppy.jpg")
		html(.img1)
		count : .count + 1
	}
	else if (.count == 4) {
		setimg(img1, "sleepy_puppy.jpg")
		html(.img1)
		count : .count + 1
	}
}


