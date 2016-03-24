tests
testOchiai
	cluster := VCluster default forOchiaiCollections.
	self assert: (cluster comparator compare: #(1 2 3 4) with: #(1 2)) equals: 2 / (8**0.5) asFloat
