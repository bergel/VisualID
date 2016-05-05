tests
testCollection
	cluster := VCluster default forJaccardCollections.
	self assert: (cluster comparator compare: #(1 2 3 4 5 6) with: #(4 2 3 6 1 5)) equals: 1.
	self assert: (cluster comparator compare: #(1 2 3 4 5 6) with: #(1 2 3 7 8 9)) equals: 1/3.
	self assert: (cluster comparator compare: #(1 2 3 4 5 6) with: #(7 8 9 10 11 12)) equals: 0
	
