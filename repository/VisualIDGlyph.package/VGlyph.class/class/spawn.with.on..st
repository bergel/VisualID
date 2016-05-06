hooks
spawn: glyph with: random on: selector
	self assert: [ random class == VRandom ].
	(glyph level < MAX_LEVEL and: [ glyph rootComplexity < MAX_COMPLEXITY ]) 
		ifTrue:[
			| inst |
			inst := VGlyph newChildFor: glyph with: random.
			glyph perform: selector with: inst.
		].