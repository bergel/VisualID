accessing
score
	^ score > 1
		ifTrue: [ score / 100 ]
		ifFalse: [ score ]