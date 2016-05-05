canvas drawing
generateOuterChildOn: canvas withAngle: theta atX: vx atY: vy
	^ outerChild
		isNull ifFalse: [ 
			canvas save.
			canvas translateTo: (vx @ vy).
			canvas scaleBy: (outerScale @ outerScale).
			canvas rotateBy: theta.
			outerChild renderPathOn: canvas.
			canvas restore ]