factory
randomFor: anObject
	| glyph inst random |
	random := VRandom newWithSeed: anObject hash.
	glyph := (random discrete: self glyphs) for: anObject. 
	inst := self new.
	inst glyph: glyph.
	^ inst
	