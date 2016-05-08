utility
convertGRAPHResult: setOfNumbers
	^ setOfNumbers collect: [ :numbers | 
		numbers collect: [ :n | classes indexOf: (self classesForGraph at: n) ]
		 ] 