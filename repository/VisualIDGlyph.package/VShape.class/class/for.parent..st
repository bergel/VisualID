factory
for: random parent: aGlyph
	| shape |
	self assert: [ random class == VRandom ].
	shape := VShape new.
	shape parent: aGlyph.
	self setUpMetaShape: shape with: random. 
	shape icScale: 0.
	shape spawnInside: (random prob: 0.6 reduced: shape level).
	shape spawnInside ifTrue: [ 
		shape icScale: (random randomFrom: 0.1 to: (2 / shape n )) ].
	shape spawnInside ifTrue: [ self spawn: shape with: random on: #insideChild: ].
	^ shape.