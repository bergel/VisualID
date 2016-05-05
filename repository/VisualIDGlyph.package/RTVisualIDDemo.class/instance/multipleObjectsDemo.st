demos
multipleObjectsDemo
"Creates an id for every object in the list. If the objects are of a similar class, then their icons will be similar"
	| v es shape objects cluster|
	objects := { (2@2) . (2@1) . ((1@1) corner: (5@4)). ((2@2) corner: (3@6)) . 1 . 'ignacio' . 'ignacio123' }.
	v := RTView new.
	v @ RTDraggableView.
	cluster := VCluster new 
						basedOn:[ :model | model ];
						forJaccardCollections.
	shape := RTCompositeShape new.
	shape add: (RTVisualID for: [:obj| cluster id: obj name.]).
	shape add: RTLabel new.
	shape vertical.
	es := shape elementsOn: objects.
	v addAll: es.
	RTFlowLayout on: es.
	es @ RTDraggable.
	v