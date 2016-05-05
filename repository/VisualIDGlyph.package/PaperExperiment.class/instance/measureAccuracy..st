private - measuring score
measureAccuracy: setOfNumbers
	| combi score2 |
	combi := (setOfNumbers collect: #pairCombination) flatCollect: #yourself.
	score2 := (combi size / (self perfectMatches) size) round: 2.
	^ score2