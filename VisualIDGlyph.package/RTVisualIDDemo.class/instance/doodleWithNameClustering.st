demos
doodleWithNameClustering
"creates a visual id for every name in the list. If several names are similar, they will have similar icons"
	|namesList v shape es cluster|
	namesList := #('Experiment1' 'Experiment34' 'Experiment56' 'doodleView.class' 'doodleView.java' 'psGR.java' 'psBGR.java').
	VCluster reset.
	v := RTView new.
	v @ RTDraggableView.
	cluster := VCluster new 
						basedOn:[ :model | model ];
						forJaccardCollections.
	shape := RTCompositeShape new.
	shape add: (RTVisualID for: [:obj| cluster id: obj name.]).
	shape add: RTLabel new.
	shape vertical.
	es := shape elementsOn: namesList.
	v addAll: es.
	RTFlowLayout on: es.
	es @ RTDraggable.
	v open