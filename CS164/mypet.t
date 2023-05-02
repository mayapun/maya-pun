var img, state1, state2, state3, state4, state5
var state
var time
var time1
var label1

fun init(){
	state1 : "happy_puppy.jpg"
	state2: "hungry_puppy.jpg"
	state3: "sleepy_puppy.jpg"
	state4: "angry_puppy.jpg"	
	state5: "sad_puppy.jpg"
	
	html("<center>")
	html("<h1> My Virtual Puppy </h1>")
	html("<p> Link to the")
	html("<a href = \"descriptive.html\"> Documentation</a>")
	html("</p>")
	button("Scold", funScold)
	button("Feed", funFeed)
	button("Pet", funPet)
	button("Noise", funNoise)
	html("<br>")
	img : makeimg()
	setimg(.img, .state1)
	html("<br>")
	state : .state1
	label1 : makelabel("He is happy to meet you.")
	html("</center>")
	time : timer(6000, funTime)
}

fun funScold(){ 
	stoptimer(.time1)
	stoptimer(.time)
	if .state == .state1{
		setimg(.img, .state5)
		state : .state5
		setlabel(.label1, "He is sad cause you scold him.") 
	
	}
	else if .state == .state2{
		setimg(.img, .state5)
		state : .state5
		setlabel(.label1, "He is sad cause you scold him when he was hungry.")
	}
	else if .state == .state3{
		setimg(.img, .state3) 
		state : .state3
		setlabel(.label1, "He doesn't care if you scold. He is in his dreamland.")		

	}
	else if .state == .state4{
		setimg(.img, .state5)
		state : .state5
		setlabel(.label1, "He is sad now.")
	}
	else {
		setimg(.img, .state5)
		state : .state5
		setlabel(.label1, "He is about to cry.")
	}
	time1 : timer(6000, funTime)	
}
fun funFeed(){
	stoptimer(.time1)
	stoptimer(.time)
	if .state == .state1{
		setimg(.img, .state3)
		state : .state3
		setlabel(.label1, "After eating, he is taking a quick nap.")
	}
	else if .state == .state2{
		setimg(.img, .state1)
		state : state1
		setlabel(.label1, "He is very happy now.")
	}
	else if .state == .state3{
		setimg(.img, .state1)
		state : state1
		setlabel(.label1, "He is happy.")
	} 
	else if .state == .state4{ 
		setimg(.img, .state1)
		state : .state1
		setlabel(.label1, "He forgives you cause of food.")
	}
	else { 
		setimg(.img, .state1)
		state : .state1
		setlabel(.label1, "He is happy.")
	} 
	time1 : timer(6000, funTime)	
}

fun funNoise(){
	stoptimer(.time1)
	stoptimer(.time)
	if .state == .state1{
		setimg(.img, .state4)
		state : .state4
		setlabel(.label1, "He doesn't like noise.")
	}
	else if .state == .state2{
		setimg(.img, .state4)
		state : .state4
		setlabel(.label1, "He doesn't like noise. He needs food.")
	} 
	else if .state == .state3{
		setimg(.img, .state4)
		state : .state4
		setlabel(.label1, "He is angry cause you disturb his sleep.")
	}
	else if .state == .state4{
		setimg(.img, .state5)
		state : .state5
		setlabel(.label1, "He doesn't like noise.")
	}
	else {
		setimg(.img, .state5)
		state : .state5
		setlabel(.label1, "He is very upset cause you making noise continously.")
	}
	time1 : timer(6000, funTime)
}

fun funPet(){
	stoptimer(.time)
	stoptimer(.time1)
	if .state == .state1{
		setimg(.img, .state3)
		state : .state3
		setlabel(.label1, "He likes it so he passed out.")
	}
	else if .state == .state2{
		setimg(.img, .state2)
		state : .state2
		setlabel(.label1, "He is still hungry. He wants food.")
	}
	else if .state == .state3{
		setimg(.img, .state4)
		state: .state4
		setlabel(.label1,"He doesn't like any disturbance on his nap.") 
	}
	else if .state == .state4{
		setimg(.img, .state1)
		state : .state1
		setlabel(.label1, "He is happy now.")
	}
	else{
		setimg(.img, .state1)
		state : .state1
		setlabel(.label1, "He thinks you give him attention so he is now happy.")
	}
	time1 : timer(6000, funTime)
}

fun funTime(){
	html("<center>")
	if .state == .state1{
		setimg(.img, .state2)
		state : .state2
		setlabel(.label1, "He is hungry now.")
	}
	else if .state == .state2{
		setimg(.img, .state4)
		state : .state4
		setlabel(.label1, "He is angry cause you didn't feed him.")
	}
	else if .state == .state3{
		setimg(.img, .state2)
		state : .state2
		setlabel(.label1, "After his quick nap, he is hungry again.")
	}
	else if .state == .state4{
		setimg(.img, .state3)
		state : .state3
		setlabel(.label1, "He is tired now.")
	}
	else{ 
		setimg(.img, .state3)
		state : .state3
		setlabel(.label1, "He is tired being sad. He's passed out.")
	}
	time : timer(5000, funTime)
}

