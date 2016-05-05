accessing
lineColor: aColorOrBlock
	aColorOrBlock isBlock 
		ifTrue:[
			self lineColorElement: [ :anElement | aColorOrBlock value: (anElement model) ].
		] ifFalse:[
			self lineColorElement: [ :anElement | aColorOrBlock].].