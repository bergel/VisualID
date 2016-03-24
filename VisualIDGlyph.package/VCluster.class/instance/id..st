action
id: anObject
	^ ids at: anObject ifAbsentPut:[
			|newId prototype similar|
			similar := self lookup: anObject.
				similar ifNil:[
						newId := VisualID randomFor: anObject.
					] ifNotNil:[
						prototype := ids at: similar.
						newId := prototype clone.
					((self comparator compare: (based value: similar) with: (based value: anObject)) < 1) ifTrue: [ newId mutate ].
					 ].
			newId].
	