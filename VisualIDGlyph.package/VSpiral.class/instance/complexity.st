hooks
complexity
	| c |
	c := length.
	centerChild ifNotNil: [ c := c + centerChild complexity ].
	outerChild ifNotNil: [ c := c + (outerChild complexity*length) ].
	^ c