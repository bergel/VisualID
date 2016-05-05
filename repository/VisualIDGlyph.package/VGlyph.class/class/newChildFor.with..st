hooks
newChildFor: aGlyph with: anObject
	|class|
	class := VLine.
	(aGlyph level < MAX_LEVEL and: [aGlyph rootComplexity < MAX_COMPLEXITY]) ifTrue:[
		class := VRandom default discrete: (self glyphs: aGlyph).
	].
	^ class for: anObject parent: aGlyph.
	