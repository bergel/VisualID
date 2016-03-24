actions
compare: anObject with: anotherObject
	self
		assert: [ anObject isCollection and: [ anotherObject isCollection ] ]
		description: 'We should provide collections as argument'.
	^ (anObject intersection: anotherObject) size / (anObject union: anotherObject) size