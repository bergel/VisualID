factory
for: anObject parent: aGlyph
	"Public method to create a glyph"
	| figure random |
	random := aGlyph createOrGetRandomFor: anObject.
	figure := VFigure new.
	figure parent: aGlyph.
	figure headScale: (random randomFrom: 0.1 to: 0.2).
	figure legScale: (random randomFrom: 0.3 to: 0.6).
	figure tailScale: (random randomFrom: 0.1 to: 0.4).
	figure head: (VRadial for: anObject parent: figure).
	figure leg: (VLine for: anObject parent: figure).
	figure
		tail:
			((VRandom default prob: 0.8)
				ifTrue: [ VLine for: anObject parent: figure ]
				ifFalse: [ VNull for: anObject parent: figure ]).
	^ figure