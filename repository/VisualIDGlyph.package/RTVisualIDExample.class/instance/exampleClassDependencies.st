sources
exampleClassDependencies

	| shape cluster s elements v |
	shape := RTVisualID new.
	cluster := VCluster new  
				basedOn: [ :model | model dependentClasses copyWithout: model ]; 
				comparator: VJaccard new.                   

	shape visualID:[ :ele |  cluster id: ele ]. "cluster is a factory, create a visualID for element"

"	shape lineColor: [ :ele| Color random ]."
	
	s := RTCompositeShape new.
"	s add: RTLabel new."
	s add: shape.
	s vertical.
	elements := s elementsOn: (RTAbstractElementShape withAllSubclasses sortedAs: #name).

	v := RTView new.
	v @ RTDraggableView.
	v addAll: elements.
	
	RTGridLayout new gapSize: 30; on: elements.
	elements @ RTDraggable @ RTPopup.
	^ v
