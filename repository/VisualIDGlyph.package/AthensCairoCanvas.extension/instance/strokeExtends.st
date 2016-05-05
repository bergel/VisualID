*VisualIDGlyph-CoreGlyph
strokeExtends
	|l b r t|
	l := 0.0 shallowCopy.
	b := 0.0 shallowCopy.
	r := 0.0 shallowCopy.
	t := 0.0 shallowCopy.
	self primStrokeExtendsLeft: l bottom: b right: r top: t.
	^ Rectangle left: l right: r  top: t bottom: b. 