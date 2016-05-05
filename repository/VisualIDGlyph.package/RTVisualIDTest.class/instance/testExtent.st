tests
testExtent

	| e |
	e := RTVisualID element.
	"self assert: e trachelShape visualID equals: VisualID nil."
	self assert: e extent equals: RTVisualID defaultExtent.
	