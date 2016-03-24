actions
compare: anObject with: anotherObject
	|initial|
	initial := (score *100) ceiling.
	(initial to: 100) reverse do: [ :i |
		(self compare: anObject with: anotherObject score: i) ifTrue: [ 
				^ (i/100) asFloat.
			].
		 ].
	^ 0.