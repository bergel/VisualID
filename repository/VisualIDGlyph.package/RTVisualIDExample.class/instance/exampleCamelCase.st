sources
exampleCamelCase
	| shape s elements v |
	shape := RTVisualID new.
	shape score: 30.
	shape basedOn: [ :cls | cls name cutWhereCamelCase ].
	"shape color: [ :ele| Color random ]."
	
	s := RTCompositeShape new.
	s add: RTLabel new.
	s add: shape.
	s vertical.
	elements := s elementsOn: { RTAbstractLine . RTArrowedLine . RTBox . RTRoundedBox }.

	v := RTView new.
	v @ RTDraggableView.
	v addAll: elements.
	
	RTGridLayout new gapSize: 30; on: elements.
	elements @ RTDraggable @ RTPopup.
	^ v
	
"

classes := { RTAbstractLine . RTArrowedLine . RTBox . RTRoundedBox }.

baseOn := [ :cls | cls name piecesCutWhereCamelCase ].

classes allButFirst collect: [ :cls | (VJaccard new compare: (baseOn rtValue: cls) with: (baseOn rtValue: classes first)) round: 2  ].
"
