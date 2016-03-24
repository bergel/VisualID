drawing
renderOn: canvas
	| currentPoint |
	child ifNil:[ ^ self.].
	currentPoint := canvas getCurrentPoint.
	canvas newSubPath.
	canvas moveTo: 0 @ 0.
	self renderChildOn: canvas.
	canvas newSubPath.
	canvas moveTo: currentPoint.