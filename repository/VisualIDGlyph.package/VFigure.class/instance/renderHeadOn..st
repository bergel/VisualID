canvas drawing
renderHeadOn: canvas
	canvas save.
	canvas translateTo: (0@ (legScale/2 + headScale/2)).
 	canvas scaleBy: (headScale@headScale).
  	headGlyph renderPathOn: canvas.
  	canvas restore.