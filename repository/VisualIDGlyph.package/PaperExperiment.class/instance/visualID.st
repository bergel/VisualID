public - producing visualization
visualID
	"
	self new visualID
	"
	| cls   shape cluster s elements v |
	cls := self classesForVisualID.
	shape := RTVisualID new.
	cluster := VCluster new  
				basedOn: [ :model | (model dependentClasses select: [:c | cls includes: c ]) copyWithout: model ]; 
				comparator: VJaccard new.                   

	shape visualID:[ :ele | cluster id: ele ]. "cluster is a factory, create a visualID for element"

"	shape lineColor: [ :ele| Color random ]."
	
	s := RTCompositeShape new.
"	s add: RTLabel new."
	s add: shape.
	s vertical.
	elements := s elementsOn: cls.

	v := RTView new.
	v @ RTDraggableView.
	v addAll: elements.
	
	RTGridLayout new gapSize: 34; on: elements.
	elements @ RTDraggable.
	elements @ (RTLabeled new fontSize: 20; color: Color black; text: [ :c | cls indexOf: c ]).
	^ v
