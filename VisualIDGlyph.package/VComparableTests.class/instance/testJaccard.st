tests
testJaccard
	cluster := VCluster default forJaccardCollections.
	self assert: (cluster comparator compare: #(1 2 3 4) with: #(1 2)) equals: 1/2
