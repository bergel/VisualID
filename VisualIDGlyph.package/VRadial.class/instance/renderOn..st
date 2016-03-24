canvas drawing
renderOn: canvas
	| currentPoint |
	currentPoint := canvas currentPoint.
	canvas newSubPath.
	canvas save.
	self renderVerticesOn: canvas.
	self renderEyeChildOn: canvas.
	self renderMouthChildOn: canvas.
	canvas moveTo: currentPoint.
	canvas restore.