hooks
newChildFor: aGlyph with: random
	| class |
	self assert: [ random class == VRandom ].
	class := VLine.
	(aGlyph level < MAX_LEVEL and: [aGlyph rootComplexity < MAX_COMPLEXITY]) ifTrue:[
		class := random discrete: (self glyphs: aGlyph).
	].
	^ class for: random parent: aGlyph.
	