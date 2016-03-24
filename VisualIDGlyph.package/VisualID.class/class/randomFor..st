factory
randomFor: anObject
	| glyph inst |
	glyph := (VRandom new discrete: self glyphs) for: anObject. 
	inst := self new.
	inst glyph: glyph.
	^ inst
	