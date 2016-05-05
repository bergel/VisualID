public - experiment
collectionClasses
	"
	self new collectionClasses
	"

	| classes v shape es c |
	classes := self defaultClassesForExperiment.
	v := RTView new.
	v @ RTDraggableView.
	shape := RTVisualID new.
	shape basedOn: [ :cls | cls selectors asSortedCollection ].
	shape score: 0.5.
	c := RTCompositeShape new.
	c add: (RTLabel new text: [ :cls | classes indexOf: cls ]).
	c add: shape.
	c vertical.
	es := c elementsOn: classes.
	"es @ (RTPopup new text: [ :cls | cls name, String cr, cls selectors sorted asString ])."
	es @ RTDraggable.
	v addAll: es.
	RTGridLayout on: v elements.
	v @ RTDoubleScrollBar.
	^ v