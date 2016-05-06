demos
subclassDemo
"Creates a Visual ID for every class within RTShape using the same name clustering as in doodleWithNameClustering"
	| v es shape cluster|
	v := RTView new.
	v @ RTDraggableView.
	cluster := VCluster new
						basedOn: [ :cls| cls];
						forOchiaiCollections.
	shape := RTCompositeShape new.
	shape add: RTLabel new.
	shape add: (RTVisualID for: [:class | cluster id: class dependentClasses ]).
	shape vertical.
	es := shape elementsOn: RTShape withAllSubclasses.
	v addAll: es.
	RTFlowLayout on: es.
	es @ RTDraggable.
	v
	