canvas drawing
renderEyeChildOn: canvas
	eyeChild
		isNull ifFalse: [ 
			canvas newSubPath.
			canvas moveTo: (0 @ 0).
			canvas save.
			canvas translateTo: ((-1 * eyeSep / 2) @ eyeOrg).
			canvas scaleBy: (ecScale @ ecScale).
			eyeChild renderPathOn: canvas.
			canvas restore.
			canvas save.
			canvas translateTo: ((eyeSep / 2) @ eyeOrg).
			canvas scaleBy: (ecScale @ ecScale).
			eyeChild renderPathOn: canvas.
			canvas restore. ]