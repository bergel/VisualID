private - measuring score
run: setOfNumbers
	"PRIVATE METHOD"
	| pairs right falsePositive falseNegative retrievedDocuments relevantDocuments precision recall intersection |
	pairs := (setOfNumbers flatCollect: #pairCombination) asSet.
	right := pairs select: [ :p | self perfectMatchesPair includesPair: p ].
	falsePositive := pairs select: [ :p | (self perfectMatchesPair includesPair: p) not ].
	falseNegative := self perfectMatchesPair select: [ :p | (pairs includesPair: p) not ].

	"From https://en.wikipedia.org/wiki/Precision_and_recall"
	retrievedDocuments := pairs.
	relevantDocuments := self perfectMatchesPair.
	intersection := pairs select: [ :p | (self perfectMatchesPair includesPair: p) ].
	"union := pairs, (self perfectMatchesPair select: [ :p | (pairs includesPair: p) not ] )."
	precision := intersection size / retrievedDocuments size.
	recall := intersection size / relevantDocuments size.
	^ { precision round: 2 . recall round: 2 }
"	^ { right size . falsePositive size . falseNegative size }"

"	| c a |
	c := self measureCompleteness: setOfNumbers.
	a := self measureAccuracy: setOfNumbers.
	^ { c . a }
"
