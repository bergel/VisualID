tests
testTwoSame
	| o g1 g2 |
	o := 'ignacio'.
	g1 := (RTVisualID newFor: o) element trachelShape visualID glyph.
	g2 := (RTVisualID newFor: o) element trachelShape visualID glyph.
	
	self assert: g1 class == g2 class.