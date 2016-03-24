accessing
perfectMatchesPair
	"
	self new perfectMatchesPair
	"
	^ self perfectMatches collect: [ :p | p allButLast ]