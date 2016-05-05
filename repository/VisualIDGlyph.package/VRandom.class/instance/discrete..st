action
discrete: aCollection
	|index|
	(aCollection size > 0) ifTrue: [  
		index := self nextInt: (aCollection size).
		index := (index max: 0) min: aCollection size.
		^ aCollection at: index ]