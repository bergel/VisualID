private - measuring score
runWith: numbers
	"
	self new runWith: #(2 4 21 23 28 33)
	"
	| r tmp |
	r := OrderedCollection new.
	numbers pairCombination do: [ :tupple |
			tmp := similarities select: [ :t | tupple first = t first and: [ tupple second = t second ] ].
			r add: tmp first third ].
	^ r average round: 2