canvas drawing
generateCenterChildOn: canvas
	centerChild
		isNull ifFalse: [ 
			canvas save.
			canvas moveTo: (0 @ 0).
			canvas scaleBy: (centerScale @ centerScale).
			centerChild renderPathOn: canvas.
			canvas restore.
			canvas newSubPath ]