tests
testSMC
	cluster := VCluster default forSMCCollections.
	self assert: (cluster comparator compare: #(1 2 3 4) with: #(1 2)) equals: 1/3
