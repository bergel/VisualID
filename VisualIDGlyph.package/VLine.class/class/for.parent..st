factory
for: anObject parent: aGlyph
	|line|
	line := VLine new.
	line parent: aGlyph.
	line length: (VRandom default randomFrom: 0.1 to: 0.5).
	line ribCount: (VRandom default virand: 3 range: 10 biased: 1.5).
	line spawnRib: (VRandom default prob: 0.5).
	line spawnRib ifTrue:[
		line ribScale: (VRandom default virand: 0.05 range: 0.7 biased: 1.5).
		line ribDoubleSided: (VRandom default prob: 0.8).
		line ribAngle: (VRandom default randomFrom: (Float pi * -1) to: Float pi).
		line ribTaper: (VRandom default prob: 0.3).
		line ribIncrease: (VRandom default prob: 0.3). ].
   line spawnTail: (VRandom default prob: 0.75).
   line spawnTail ifTrue:[  line tailScale: (VRandom default randomFrom: 0.15 to: 0.6) ].
	line spawnHead: (VRandom default prob: 0.75).
   line spawnHead ifTrue:[  line headScale: (VRandom default randomFrom: 0.15 to: 0.6) ].
	line spawnRib ifTrue: [self spawn: line with: anObject on: #rib:].
	line spawnTail ifTrue: [self spawn: line with: anObject on: #tail:].
	line spawnHead ifTrue: [self spawn: line with: anObject on: #head:].
	^ line.
