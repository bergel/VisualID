actions
compare: anObject with: anotherObject
	^ (anObject intersection: anotherObject) size / ((anObject size * anotherObject size)**0.5)