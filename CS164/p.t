dvar intro, typemood, firstimage, imagecycle, mood
fun init(){
	imagecycle : 0
	html("<center>\n")
	intro :makelabel("My virtual pet")
	html("<p>\n")
	button("Mood", cycle)
	html ("<p>/n")
	mood : makelabel("")
	html("</center>\n")
}
fun cycle(){
}
