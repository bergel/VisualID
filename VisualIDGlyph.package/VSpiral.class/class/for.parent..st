as yet unclassified
for: anObject parent: aGlyph
	|spiral recursionLevel hiLength lowLength|
	spiral := VSpiral new.
	spiral parent: aGlyph.
	recursionLevel := spiral level + 1.
	hiLength := 60 / recursionLevel.
	lowLength := 30 / recursionLevel - 5.
	(recursionLevel > 3) ifTrue: [ 
		hiLength := 5.
		lowLength := 5. ].
	spiral length: (VRandom default randomFrom: lowLength to: hiLength).
	spiral aligned: (VRandom default prob: 0.5).
	spiral aligned ifTrue: [ 
		spiral ppr: (VRandom default virand: 3 range: 35 biased: 2). ]
	ifFalse: [ 
		spiral ppr: (VRandom default rationalLow: 3 high: 35 den: (VRandom default randomFrom: 4 to: 7)). ].
	spiral spawnCenter: (VRandom default prob: 0.5).
	spiral centerScale: (VRandom default randomFrom: 0.15 to: 0.7).
	spiral spawnOuter: (VRandom default prob: 0.5).
	spiral spawnOuter ifTrue: [ 
		spiral outerScale: (VRandom default randomFrom: 0.05 to: 0.6). ].
	spiral spawnCenter ifTrue: [self spawn: spiral with: anObject on: #centerChild:].
	spiral spawnOuter ifTrue: [self spawn: spiral with: anObject on: #outerChild:].
	^ spiral.
	
	
	