as yet unclassified
for: anObject parent: aGlyph
	|symmetry pow|
	symmetry := VSymmetry new.
	symmetry parent: aGlyph.
	pow := ((VRandom default virand: 1 range: 3 biased: (symmetry level + 2))) asInteger.
	symmetry n: 2 ** pow.
	(VRandom default prob: 0.3) ifTrue: [  
		symmetry offset: (VRandom default randomFrom: 0.1 to: 0.5) asFloat. 
		] ifFalse: [symmetry offset: 0. ].
	symmetry cScale: ((VRandom default randomFrom: 0.3 to: 0.6)) * (1- symmetry offset).
	self spawn: symmetry with: anObject on: #child:.
	^ symmetry.