action
update
	canvas setLineJoin: 1.
	canvas setLineCap: 1.
	canvas save.
	canvas scaleBy:  ((self width/targetSize )@ (self height/ targetSize*(-1))).
	canvas translateTo: ((targetSize/2)@(targetSize/2*(-1))).
	self glyph renderPathOn: canvas.
	self trim.
	self glyph renderPathOn: canvas.
	canvas restore.
	canvas scaleBy: ((self width/2) @ (self height/2)).
	canvas setLineWidth: (VisualID linewidth + VisualID outlineWidth*2).
	canvas setR: (self shadowColor red) G: (self shadowColor green) B: (self shadowColor blue) A: (self shadowColor alpha).
	canvas strokePreserve.
	canvas setLineWidth: (VisualID linewidth).
	canvas setR: (self lineColor red) G: (self lineColor green) B: (self lineColor blue) A: (self lineColor alpha).
	canvas stroke.