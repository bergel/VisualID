hooks
blockToCompareClasses
	^ [ :model | (model dependentClasses select: [ :c | classes includes: c ]) copyWithout: model ]