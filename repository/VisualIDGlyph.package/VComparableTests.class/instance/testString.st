tests
testString
	cluster := VCluster default forStrings.
	self assert: (cluster comparator compare: 'ignacio' with: 'ignacio') equals: 1.
	self assert: (cluster comparator compare: 'ignaciof' with: 'ignajkl;') equals: 0.5.
	self assert: (cluster comparator compare: 'ignaciof' with: 'hmb') equals: 0.
	self assert: (cluster comparator compare: 'ignaciof' with: 'igjkl;pu') equals: 0
	