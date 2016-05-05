hooks
drawOn: athensCanvas
	| paint |
	athensCanvas pathTransform restoreAfter: [
		athensCanvas setShape: self visualID boundingBox.
		athensCanvas pathTransform 
			multiplyBy: matrix asFloatTransform;
			translateBy: rectangle corner negated.
		self visualID ifNotNil: [ 
			 paint := (athensCanvas cacheAt: self visualID
                             	ifAbsentPut: [ self visualID paint ]).
			 athensCanvas setPaint: paint.
			].
		athensCanvas draw ].