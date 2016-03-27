initialization
setUpMetaShape: path with: anObject
	| level random |
	random := path parent createOrGetRandomFor: anObject.
	path maxAngle: Float pi * 2.
	level := path level.
	path ocScale: 0.
	path n: (2 ** (random randomLevelFrom: 3 to: 5 at: level)) asInteger.
	path fourier: (random prob: 0.5).
	path ncoef: (2 * (random randomFrom: 2 to: 5) + 1) asInteger.
	path coefficients: (Array new: path ncoef).
	path points: (Array new: path n + 1).
	(1 to: path n + 1) do: [ :i | path points at: i put: 0.5 ].
	(1 to: path ncoef)
		do: [ :j | 
			path coefficients at: j put: ((random randomFrom: -1 to: 1) / (j + 1)).
			(1 to: path n + 1)
				do: [ :i | 
					| angle |
					angle := path maxAngle * i / path n.
					path points at: i put: ((path points at: i) + ((path coefficients at: j) * ((j + 1) * angle) sin / 2)) ] ].
	path
		spawnVertex:
			(random prob:
				(path maxAngle < Float twoPi
						ifTrue: [ 0.8 ]
						ifFalse: [ 0.6 ])
				reduced: level).
	path spawnVertex
		ifTrue: [ path ocScale: (random randomFrom: 0.1 to: 0.6) ].
	path spawnVertex
		ifTrue: [ self spawn: path with: anObject on: #outlineChild: ].
	^ path