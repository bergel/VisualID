factory
for: anObject
	| glyph inst |
	(VRandom reset; default) seed: anObject hash.
	glyph := (VRandom default discrete: self glyphs) for: anObject.
	inst := self new.
	inst glyph: glyph.
	^ inst.