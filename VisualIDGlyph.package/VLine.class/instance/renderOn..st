canvas drawing
renderOn: canvas
	"exec_line"
	|currentPoint|
	currentPoint := canvas currentPoint.
	canvas newSubPath.
	canvas moveTo: (0@ (length/2)).
	self renderHeadOn: canvas.
	canvas lineTo: (0@(length/2*(-1))).
	self renderTailOn: canvas.
	self renderRibOn: canvas.
	canvas newSubPath.
	canvas moveTo: currentPoint.