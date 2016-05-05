hooks
mutate
	| recursionLevel hiLength lowLength |
	recursionLevel := self level + 1.
	hiLength := 60 / recursionLevel.
	lowLength := 30 / recursionLevel - 5.
	(recursionLevel > 3) ifTrue: [ 
			hiLength := 5.
			lowLength := 5. ].
	length := self mutate: length from:  lowLength to: hiLength.
	ppr := self mutate: ppr from: 3 to: 35.
	centerScale := self mutate: centerScale from: 0.15 to: 0.7.
	outerScale := self mutate: outerScale from: 0.05 to: 0.6.
	self centerChild mutate.
	self outerChild mutate.