actions
compare: anObject with: anotherObject
	|a b c|
	a := (anObject intersection: anotherObject) size.
	b := (anObject copyWithoutAll: anotherObject) size.
	c := (anotherObject copyWithoutAll: anObject) size.
	^ (2 * a) / (2 * a + b + c)