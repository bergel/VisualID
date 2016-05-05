actions
compare: anObject with: anotherObject
"simple matching coefficient"
	^ (anObject intersection: anotherObject) size / (anObject size + anotherObject size)