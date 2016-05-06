factory
for: random parent: aGlyph
	| spiral recursionLevel hiLength lowLength |
	self assert: [ random class == VRandom ].
	spiral := VSpiral new.
	spiral random: random.
	spiral parent: aGlyph.
	recursionLevel := spiral level + 1.
	hiLength := 60 / recursionLevel.
	lowLength := 30 / recursionLevel - 5.
	(recursionLevel > 3) ifTrue: [ 
		hiLength := 5.
		lowLength := 5. ].
	spiral length: (random randomFrom: lowLength to: hiLength).
	spiral aligned: (random prob: 0.5).
	spiral aligned ifTrue: [ 
		spiral ppr: (random virand: 3 range: 35 biased: 2). ]
	ifFalse: [ 
		spiral ppr: (random rationalLow: 3 high: 35 den: (random randomFrom: 4 to: 7)). ].
	spiral spawnCenter: (random prob: 0.5).
	spiral centerScale: (random randomFrom: 0.15 to: 0.7).
	spiral spawnOuter: (random prob: 0.5).
	spiral spawnOuter ifTrue: [ 
		spiral outerScale: (random randomFrom: 0.05 to: 0.6). ].
	spiral spawnCenter ifTrue: [self spawn: spiral with: random on: #centerChild:].
	spiral spawnOuter ifTrue: [self spawn: spiral with: random on: #outerChild:].
	^ spiral
	
	
	