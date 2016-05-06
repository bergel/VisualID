factory
for: random parent: aGlyph
	|symmetry pow|
	symmetry := VSymmetry new.
	symmetry parent: aGlyph.
	symmetry random: random.
	pow := ((random virand: 1 range: 3 biased: (symmetry level + 2))) asInteger.
	symmetry n: 2 ** pow.
	(random prob: 0.3) ifTrue: [  
		symmetry offset: (random randomFrom: 0.1 to: 0.5) asFloat. 
		] ifFalse: [symmetry offset: 0. ].
	symmetry cScale: ((random randomFrom: 0.3 to: 0.6)) * (1- symmetry offset).
	self spawn: symmetry with: random on: #child:.
	^ symmetry.