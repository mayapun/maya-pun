var dx, dy, x0, y0, x1, y1, x, y, e

fun plotLine(x0, y0, x1, y1){
	dx : .x1 - .x0 
	dy : .y1 - .y0 
	y : .y0
	e : 0

	loop{
		until .x0 == .x1
		plot(.x, .y)
		e : .e + .dy 
		if (.e + .e) > .dx{
			y : .y + 1 
			e : .e - .dx
		}
		x0 : .x0 + 1
	} 
} 
fun plot(x, y){
}

fun init(){
}
