tests
testBasic
	| s |
	s := TRVisualIDShape new.
	self assert: s notNil.
	self assert: s visualID equals: VisualID nil