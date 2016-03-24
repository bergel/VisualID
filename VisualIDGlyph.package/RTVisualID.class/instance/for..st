accessing
for: anSelectorOrBlock
	anSelectorOrBlock isBlock ifTrue:[
		self visualIDElement: [ :anElement | anSelectorOrBlock value: (anElement model) ].
		] ifFalse:[
		self visualIDElement: [ :anElement | VisualID randomFor: (anElement perform: anSelectorOrBlock) ].
		].