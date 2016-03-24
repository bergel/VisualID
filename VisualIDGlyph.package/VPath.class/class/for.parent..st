as yet unclassified
for: anObject parent: aGlyph
	| path |
	path := VPath new.
	path parent: aGlyph.
	self setUpMetaShape: path with: anObject.
	^ path.