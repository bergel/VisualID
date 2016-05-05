actions
compare: aString with: anotherString score: percentage
	| p n |
	(anotherString class = aString class) ifFalse:[ ^ false].
	n := aString size.
	p := (n * (percentage/100)) ceiling.
		(0 to: n - p) do: [ :i | 
			| substring |
			substring := aString copyFrom: i + 1 to: i + p.
			(anotherString findString: substring) > 0
				ifTrue: [ ^ true ].].
	^ false. 