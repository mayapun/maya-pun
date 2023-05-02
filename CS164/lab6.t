fun init(){
	var a, acc, count, ave
	acc : 0 
	count : 0 
	loop { 
		a : iread("Please enter an integer")
		until .a < 0 
		count : .count + 1
		acc : .acc + .a 
	}
	ave : .acc / .count 
	sprint("Total:")
	iprint(.acc)
	nl()
	sprint("Count:")
	iprint(.count)
	nl()
	sprint("Average:")
	iprint(.ave)
}

