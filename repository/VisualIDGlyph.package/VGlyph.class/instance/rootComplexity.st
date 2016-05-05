hooks
rootComplexity
	|root|
	root := self.
	[ root isNull not ] whileTrue:[ root := root parent.].
	^ root complexity.