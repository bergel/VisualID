factory
for: random parent: aGlyph
	| radial | 
	self assert: [ random class == VRandom ].
	radial := VRadial new.
	radial random: random.
	radial parent: aGlyph.
	radial numVertices: (random virand: 3 range: 12 biased: 2) asInteger.
	radial spawnVertex: (random prob: 0.5).
	radial vcScale: 0.
	radial mouthOrg: 0.
	radial spawnVertex ifTrue: [ 
		radial vcScale: (random randomFrom: 0.15 to: 0.7). ].
	radial spawnMouth: (random prob: 0.6).
	radial spawnMouth ifTrue: [ 
		radial mcScale: (random randomFrom: 0.1 to: 0.3). ].
	radial spawnEye: (random prob: 0.3).
	
		radial ecScale: (random randomFrom: 0.1 to: 0.4).
		radial eyeSep: (random randomFrom: 0.2 to: 0.3).
		radial eyeOrg: (random randomFrom: 0.2 to: 0.3).
		radial mouthOrg: (random randomFrom: (-0.2) to: (-0.3)).
	(random prob: 0.5) 
		ifTrue: [ 
			radial angleCutoff: (random randomFrom: Float pi / 2 to: Float pi / 1.2) ]
		ifFalse: [ radial angleCutoff: Float pi. ].
	radial spawnVertex ifTrue: [self spawn: radial with: random on: #vertexChild:].
	radial spawnMouth ifTrue: [ self spawn: radial with: random on: #mouthChild:].
	radial spawnEye ifTrue: [self spawn: radial with: random on: #eyeChild:].
		
	^ radial.