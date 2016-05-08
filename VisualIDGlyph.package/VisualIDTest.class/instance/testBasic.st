tests
testBasic
	| v |
	v := VisualID for: random.
	self assert: v glyph class equals: VFigure