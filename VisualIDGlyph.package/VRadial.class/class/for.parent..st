factory
for: randomizer parent: aGlyph
	|radial| 
	radial := VRadial new.
	radial parent: aGlyph.
	radial numVertices: (VRandom default virand: 3 range: 12 biased: 2) asInteger.
	radial spawnVertex: (VRandom default prob: 0.5).
	radial vcScale: 0.
	radial mouthOrg: 0.
	radial spawnVertex ifTrue: [ 
		radial vcScale: (VRandom default randomFrom: 0.15 to: 0.7). ].
	radial spawnMouth: (VRandom default prob: 0.6).
	radial spawnMouth ifTrue: [ 
		radial mcScale: (VRandom default randomFrom: 0.1 to: 0.3). ].
	radial spawnEye: (VRandom default prob: 0.3).
	
		radial ecScale: (VRandom default randomFrom: 0.1 to: 0.4).
		radial eyeSep: (VRandom default randomFrom: 0.2 to: 0.3).
		radial eyeOrg: (VRandom default randomFrom: 0.2 to: 0.3).
		radial mouthOrg: (VRandom default randomFrom: (-0.2) to: (-0.3)).
	(VRandom default prob: 0.5) ifTrue: [ 
		radial angleCutoff: (VRandom default randomFrom: Float pi / 2 to: Float pi / 1.2) .]
		ifFalse: [ radial angleCutoff: Float pi. ].
		radial spawnVertex ifTrue: [self spawn: radial with: randomizer on: #vertexChild:].
		radial spawnMouth ifTrue: [ self spawn: radial with: randomizer on: #mouthChild:].
		radial spawnEye ifTrue: [self spawn: radial with: randomizer on: #eyeChild:].
		
	^ radial.