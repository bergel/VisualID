initialization
setUpMetaShape: aMetaShape with: random
	| level |
	aMetaShape random: random.
	aMetaShape maxAngle: Float pi * 2.
	level := aMetaShape level.
	aMetaShape ocScale: 0.
	aMetaShape n: (2 ** (random randomLevelFrom: 3 to: 5 at: level)) asInteger.
	aMetaShape fourier: (random prob: 0.5).
	aMetaShape ncoef: (2 * (random randomFrom: 2 to: 5) + 1) asInteger.
	aMetaShape coefficients: (Array new: aMetaShape ncoef).
	aMetaShape points: (Array new: aMetaShape n + 1).
	(1 to: aMetaShape n + 1) do: [ :i | aMetaShape points at: i put: 0.5 ].
	(1 to: aMetaShape ncoef)
		do: [ :j | 
			aMetaShape coefficients at: j put: ((random randomFrom: -1 to: 1) / (j + 1)).
			(1 to: aMetaShape n + 1)
				do: [ :i | 
					| angle |
					angle := aMetaShape maxAngle * i / aMetaShape n.
					aMetaShape points at: i put: ((aMetaShape points at: i) + ((aMetaShape coefficients at: j) * ((j + 1) * angle) sin / 2)) ] ].
	aMetaShape
		spawnVertex:
			(random prob:
				(aMetaShape maxAngle < Float twoPi
						ifTrue: [ 0.8 ]
						ifFalse: [ 0.6 ])
				reduced: level).
	aMetaShape spawnVertex
		ifTrue: [ aMetaShape ocScale: (random randomFrom: 0.1 to: 0.6) ].
	aMetaShape spawnVertex
		ifTrue: [ self spawn: aMetaShape with: random on: #outlineChild: ].
	^ aMetaShape