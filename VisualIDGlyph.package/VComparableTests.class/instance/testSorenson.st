tests
testSorenson
	cluster := VCluster default forSorensonCollections.
	self assert: (cluster comparator compare: #(1 2 3 4) with: #(1 2)) equals: 2 / 3

