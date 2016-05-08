configuring glyph generation
for: anSelectorOrBlock
	"
	This is a PUBLIC method.
	This method takes as argument a one argument block. The block will be evaluated on the element's model. The block as to return a collection. This collection will then be used to compare elements.
	"
	anSelectorOrBlock isBlock ifTrue:[
		self visualIDElement: [ :anElement | anSelectorOrBlock value: (anElement model) ].
		] ifFalse:[
		self visualIDElement: [ :anElement | VisualID randomFor: (anElement perform: anSelectorOrBlock) ].
		].