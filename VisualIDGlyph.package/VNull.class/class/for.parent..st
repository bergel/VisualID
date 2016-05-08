factory
for: random parent: aGlyph
	self assert: [ random class == VRandom ].
	^ VNull new parent: aGlyph; random: random; yourself