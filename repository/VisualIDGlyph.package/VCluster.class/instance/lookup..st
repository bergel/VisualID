action
lookup: anObject
	| mostSimilar mostSimilarRate |
	ids keys
		do: [ :anOtherObject | 
			| rate |
			rate := self comparator compare: (based value: anObject) with: (based value: anOtherObject).
				(rate > self score)
					ifTrue: [ 
						mostSimilarRate
							ifNil: [ 
								mostSimilar := anOtherObject.
								mostSimilarRate := rate ]
							ifNotNil: [ 
								mostSimilarRate < rate
									ifTrue: [ 
										mostSimilarRate := rate.
										mostSimilar := anOtherObject ] ] ] ].
	^ mostSimilar