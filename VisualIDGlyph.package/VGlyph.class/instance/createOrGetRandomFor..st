accessing
createOrGetRandomFor: anObject
	random ifNil: [ self random: anObject ].
	^ random