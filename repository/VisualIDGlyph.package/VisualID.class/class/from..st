factory
from: anObject
	|glyph inst|
	glyph := (VRandom default discrete: self glyphs) from: anObject.
	inst := self new.
	inst glyph: glyph.
	^ inst.