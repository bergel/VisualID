canvas drawing
renderLegsOn: canvas
	canvas save.
	(0 to: 3) do:[ :i|
		canvas save.
		(i<3) ifTrue:[ canvas scaleBy: (1@(-1)).].
		(i>1) ifTrue:[ canvas scaleBy: ((-1)@1).].
		canvas rotateBy: (Float pi *4.0).
		canvas translateTo: (0@legScale/2).
		canvas scaleBy: (legScale@legScale).
		legGlyph renderPathOn: canvas.    
    	canvas restore.
	].
	canvas restore.