accessing
shadowColor: aColorOrBlock
	aColorOrBlock isBlock 
		ifTrue:[
			self shadowColorElement: [ :anElement | aColorOrBlock value: (anElement model) ].
		] ifFalse:[
			self shadowColorElement: [ :anElement | aColorOrBlock].].