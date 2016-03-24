canvas drawing
renderMouthChildOn: canvas
	mouthChild
		isNull ifFalse: [ 
			canvas newSubPath.
			canvas moveTo: (0 @ 0).
			canvas save.
			canvas translateTo: (0 @ mouthOrg).
			canvas scaleBy: (mcScale @ mcScale).
			mouthChild renderPathOn: canvas.
			canvas restore ]