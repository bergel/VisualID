accessing
from: anSelectorOrBlock
	anSelectorOrBlock isBlock ifTrue:[
		self visualIDElement: [ :anElement | anSelectorOrBlock value: (anElement model) ].
		] ifFalse:[
		self visualIDElement: [ :anElement | VCluster default idFrom: (anElement model perform: anSelectorOrBlock) ].
		].