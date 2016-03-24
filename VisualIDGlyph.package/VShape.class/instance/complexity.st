hooks
complexity
	| c |
	c := super complexity.
	insideChild ifNotNil: [ c := c + (insideChild complexity*n)].
	^ c
	