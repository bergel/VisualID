factory
for: random parent: aGlyph
	"Public method to create a glyph"
	| figure |
	self assert: [ random class == VRandom ].
	figure := VFigure new.
	figure random: random.
	figure parent: aGlyph.
	figure headScale: (random randomFrom: 0.1 to: 0.2).
	figure legScale: (random randomFrom: 0.3 to: 0.6).
	figure tailScale: (random randomFrom: 0.1 to: 0.4).
	figure head: (VRadial for: random parent: figure).
	figure leg: (VLine for: random parent: figure).
	figure
		tail:
			((random prob: 0.8)
				ifTrue: [ VLine for: random parent: figure ]
				ifFalse: [ VNull for: random parent: figure ]).
	^ figure