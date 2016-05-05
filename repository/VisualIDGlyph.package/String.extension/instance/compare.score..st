*VisualIDGlyph-CoreGlyph
compare: aString score: percentage
	| p n |
	(aString class = self class) ifFalse:[ ^ false].
	n := self size.
			p := (n * percentage / 100) ceiling.
			(0 to: n - p) do: [ :i | 
				| substring |
				substring := self copyFrom: i + 1 to: i + p.
				(aString findString: substring) > 0
					ifTrue: [ ^ true ] ].
	^ false. 