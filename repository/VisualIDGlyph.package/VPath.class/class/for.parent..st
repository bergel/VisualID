factory
for: random parent: aGlyph
	| path |
	path := VPath new.
	path parent: aGlyph.
	self setUpMetaShape: path with: random.
	^ path