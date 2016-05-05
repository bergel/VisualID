action
idFrom: anObject
	^ ids at: anObject ifAbsentPut: [ VisualID from: anObject ]