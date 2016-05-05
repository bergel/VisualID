utility
convertVISUALIDResult: setOfNumbers
	^ setOfNumbers collect: [ :numbers | 
		numbers collect: [ :n | classes indexOf: (self classesForVisualID at: n) ]
		 ] 