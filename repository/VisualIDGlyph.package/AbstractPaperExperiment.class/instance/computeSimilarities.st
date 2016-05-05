initialization
computeSimilarities
	| b |
	b := self blockToCompareClasses.
	similarities := OrderedCollection new.
	classes copy
		doWithIndex:
			[ :c1 :i1 | 
			classes
				doWithIndex:
					[ :c2 :i2 | 
					c1 ~~ c2
						ifTrue:
							[ similarities
								add:
									{i1.
									i2.
									(VJaccard new compare: (b rtValue: c1) with: (b rtValue: c2))} ] ] ]