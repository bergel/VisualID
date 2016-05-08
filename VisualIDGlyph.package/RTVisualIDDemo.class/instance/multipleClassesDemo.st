demos
multipleClassesDemo
"Creates an id for every object in the list. If the objects are of a similar class, then their icons will be similar"
	| v es shape objects cluster|
	objects := { RTEllipse . RTBox . RTView . RTElement . RTHorizontalLineLayout . RTVerticalLineLayout }.
	VCluster reset.
	v := RTView new.
	v @ RTDraggableView.
	cluster := VCluster new 
						basedOn:[ :model | model ];
						forJaccardCollections.
	shape := RTCompositeShape new.
	shape add: (RTVisualID for: [:obj| cluster id: obj class name.]).
	shape add: RTLabel new.
	shape vertical.
	es := shape elementsOn: objects.
	v addAll: es.
	RTFlowLayout on: es.
	es @ RTDraggable.
	v