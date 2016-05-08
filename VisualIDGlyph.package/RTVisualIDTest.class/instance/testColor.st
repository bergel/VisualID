tests
testColor
	| shape es v |
	shape := RTVisualID new.
	shape lineColor: [ :value | Color gray: (1 / value) asFloat ].
	es := shape elementsOn: #(2 10).
	v := RTView new.
	v addAll: es.
	 
	self assert: es first trachelShape visualID lineColor ~~ es second trachelShape visualID lineColor