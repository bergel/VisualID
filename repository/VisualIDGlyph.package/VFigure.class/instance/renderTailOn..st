canvas drawing
renderTailOn: canvas
	tailGlyph isNull ifFalse:[
 		canvas save.  	
	 	canvas translateTo: (0@(-1* tailScale)).
   	 	canvas scaleBy: (tailScale@tailScale).
    	tailGlyph renderPathOn: canvas.
    	canvas restore.
	].