hooks
spawn: glyph with: anObject on: selector
	
	(glyph level < MAX_LEVEL and:[glyph rootComplexity < MAX_COMPLEXITY]) 
		ifTrue:[
			| inst |
			inst := VGlyph newChildFor: glyph with: anObject.
			glyph perform: selector with: inst.
		].