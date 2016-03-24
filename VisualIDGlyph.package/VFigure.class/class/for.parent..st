factory
for: anObject parent: aGlyph
	|figure|
	figure := VFigure new.
	figure parent: aGlyph. 
	figure headScale: (VRandom default randomFrom:0.1 to:0.2).
	figure legScale: (VRandom default randomFrom:0.3 to:0.6).
	figure tailScale: (VRandom default randomFrom:0.1 to:0.4).
	figure head: (VRadial for: anObject parent: figure).
	figure leg: (VLine for: anObject parent: figure).
	figure tail: ((VRandom default prob:0.8) ifTrue:[VLine for: anObject parent: figure] ifFalse:[VNull for: anObject parent: figure]).
	^ figure.