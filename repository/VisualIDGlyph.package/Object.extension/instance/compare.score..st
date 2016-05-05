*VisualIDGlyph-CoreGlyph
compare: anObject score: percentage
	| total partial|
	(anObject class = self class) ifFalse:[ ^ false].
	total := self compare: self level: 1.
	partial := self compare: anObject level: 1.
	(total == partial) ifTrue: [^ true].
	total isZero ifTrue:[ ^ true].
	^ (partial*100/total) >= percentage. 