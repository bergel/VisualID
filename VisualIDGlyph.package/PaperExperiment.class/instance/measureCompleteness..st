private - measuring score
measureCompleteness: setOfNumbers
	| scores1 |
	scores1 := setOfNumbers collect: [ :numbers | self runWith: numbers ].
	^ scores1 average round: 2
