actions
compare: anObject with: anotherObject
	^ 2 * ((anObject intersection: anotherObject) size) / (anObject size + anotherObject size)