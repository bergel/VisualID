tests
testDice
	cluster := VCluster default forDiceCollections.
	self assert: (cluster comparator compare: #(1 2 3 4) with: #(1 2)) equals: 2/3
