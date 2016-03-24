canvas drawing
renderHeadOn: canvas
	head isNull ifFalse:[
		canvas save.
		canvas translateTo: (0@ (length/2)).
		canvas scaleBy: (headScale@headScale).
		head renderPathOn: canvas.
		canvas restore.].