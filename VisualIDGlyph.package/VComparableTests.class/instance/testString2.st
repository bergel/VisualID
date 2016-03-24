tests
testString2
	cluster := VCluster default forJaccardCollections.
	self assert: (cluster comparator compare: 'ignacio' with: 'ignaciojkl') equals: 2/3
	