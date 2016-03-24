as yet unclassified
for: anObject parent: aGlyph
	|shape|
	shape := VShape new.
	shape parent: aGlyph.
	self setUpMetaShape: shape with: anObject. 
	shape icScale: 0.
	shape spawnInside: (VRandom default prob: 0.6 reduced: shape level).
	shape spawnInside ifTrue: [ 
		shape icScale: (VRandom default randomFrom: 0.1 to: (2 / shape n ))].
	shape spawnInside ifTrue: [self spawn: shape with: anObject on: #insideChild:].
	^ shape.