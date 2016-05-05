*VisualIDGlyph-CoreGlyph
compare: anObject level: n
	|size sum|
	(self class = anObject class) ifFalse:[ ^ 0 ].
	(n > 3) ifTrue:[ ^ 0].
	(self isNil or:[anObject isNil]) ifTrue:[^ 0].
	self class instanceVariables ifNil:[ ^0].
	sum := 0.
	size := self class instanceVariables size.
	(1 to: size) do:[ :i|
		|valueA valueB|
		valueA := self instVarAt:i.
		valueB := anObject instVarAt:i.
		valueA = valueB ifTrue:[ sum := sum +1].
		sum := sum + (valueA compare: valueB level: (n+1)).
		].
	^ sum.