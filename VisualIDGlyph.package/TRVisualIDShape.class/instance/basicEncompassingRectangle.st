hooks
basicEncompassingRectangle
	rectangle ifNil: [ self computeRectangle ].
	^ rectangle