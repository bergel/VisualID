factory
for: fileName using: aVGlyphClass
	| inst glyph |
	inst := self new.
	glyph :=  aVGlyphClass for: fileName.
	inst glyph: glyph.
	^ inst.