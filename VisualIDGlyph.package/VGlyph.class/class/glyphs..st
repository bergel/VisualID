hooks
glyphs: aGlyph
	^ { VFigure. VLine. VPath. VShape. VRadial. VSpiral. VSymmetry } 
		reject: [ :c | c = aGlyph class ]