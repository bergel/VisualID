tests
testDefault
	self assert: ex numberOfClasses equals: 4.
	self assert: ex perfectMatchesPairs size equals: 1.
	self assert: ex perfectMatchesPairs anyOne equals: { PEC . PED }.
	self assert: (ex run: #(#(1 2) #(3 4))) equals: #(0.5 1)