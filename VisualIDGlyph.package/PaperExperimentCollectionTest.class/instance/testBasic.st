tests
testBasic

	| c |
	c := #(#(1 2) #(4 5)).
	self assert: (c includesPair: #(2 1)).
	self assert: (c includesPair: #(1 2)).
	self deny: (c includesPair: #(2 4)).
	self deny: (c includesPair: #(4 2)).