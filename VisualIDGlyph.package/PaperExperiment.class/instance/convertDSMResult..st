utility
convertDSMResult: setOfNumbers
	^ setOfNumbers collect: [ :numbers | 
		numbers collect: [ :n | classes indexOf: (self classesForDSM at: n) ]
		 ] 