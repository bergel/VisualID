action
randomFrom: min to: max
	|rand|
	rand := super next.
	^ (rand * (max - min)+ min) asFloat.