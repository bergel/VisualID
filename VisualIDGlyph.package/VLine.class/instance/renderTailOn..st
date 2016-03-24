canvas drawing
renderTailOn: canvas
	tail isNull ifFalse:[
		canvas save.
		canvas translateTo: (0@ ((-1)*length/2)).
		canvas scaleBy: (tailScale@tailScale).
		tail renderPathOn: canvas.
		canvas restore
		].