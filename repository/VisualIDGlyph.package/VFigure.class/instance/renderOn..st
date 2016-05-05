canvas drawing
renderOn: canvas
	|currentPoint|
	currentPoint := canvas currentPoint.
	canvas newSubPath.
	canvas moveTo: currentPoint.
	self renderLegsOn: canvas.
   self renderHeadOn: canvas.
	self renderTailOn: canvas.
	canvas newSubPath.
	canvas moveTo: currentPoint.
