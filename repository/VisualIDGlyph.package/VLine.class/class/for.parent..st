factory
for: random parent: aGlyph
	| line |
	self assert: [ random class == VRandom ].
	line := VLine new.
	line random: random.
	line parent: aGlyph.
	line length: (random randomFrom: 0.1 to: 0.5).
	line ribCount: (random virand: 3 range: 10 biased: 1.5).
	line spawnRib: (random prob: 0.5).
	line spawnRib ifTrue:[
		line ribScale: (random virand: 0.05 range: 0.7 biased: 1.5).
		line ribDoubleSided: (random prob: 0.8).
		line ribAngle: (random randomFrom: (Float pi * -1) to: Float pi).
		line ribTaper: (random prob: 0.3).
		line ribIncrease: (random prob: 0.3). ].
   line spawnTail: (random prob: 0.75).
   line spawnTail ifTrue: [ line tailScale: (random randomFrom: 0.15 to: 0.6) ].
	line spawnHead: (random prob: 0.75).
   line spawnHead ifTrue: [ line headScale: (random randomFrom: 0.15 to: 0.6) ].
	line spawnRib ifTrue: [ self spawn: line with: random on: #rib: ].
	line spawnTail ifTrue: [ self spawn: line with: random on: #tail: ].
	line spawnHead ifTrue: [ self spawn: line with: random on: #head: ].
	^ line.
