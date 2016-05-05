canvas drawing
renderOn: canvas
	| currentPoint |
	currentPoint := canvas getCurrentPoint.
	canvas newSubPath.
	self generateCenterChildOn: canvas.
	self generateSpiralOn: canvas.
	canvas newSubPath.
	canvas moveTo: currentPoint