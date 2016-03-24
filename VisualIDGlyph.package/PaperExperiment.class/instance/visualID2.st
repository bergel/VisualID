public - producing visualization
visualID2
	"
	self new visualID2
	"
	| cls shape cluster s elements v eb |
	cls := self classesForVisualID.
	shape := RTVisualID new.
	cluster := VCluster new  
				basedOn: [ :model | (model dependentClasses select: [:c | cls includes: c ]) copyWithout: model ]; 
				comparator: VJaccard new.                   

	shape visualID:[ :ele | cluster id: ele ]. "cluster is a factory, create a visualID for element"

	shape lineColor: [ :ele| Color black ].
	
	s := RTCompositeShape new.
"	s add: RTLabel new."
	s add: shape.
	s vertical.
	elements := s elementsOn: cls.

	v := RTView new.
	v @ RTDraggableView.
	v addAll: elements.
	
	"RTGridLayout new gapSize: 34; on: elements."
	elements @ RTDraggable.
	"elements @ (RTLabelled new fontSize: 20; color: Color black)."
	
	eb := RTEdgeBuilder new.
	eb shape line 
		color: Color gray trans;
		width: 4;
		shortestDistanceAttachPoint.
	eb
		view: v;
		objects: cls;
		connectToAll: #dependentClasses.
	
	RTForceBasedLayout new
		charge: -7000;
		on: elements.
	
	^ v
