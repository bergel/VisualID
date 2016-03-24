demos
collectionExperimentDemo
	|v objects cluster shape es|
	v := RTView new.
	v @ RTDraggableView.
	objects := {Object. VisualID. RTVisualID. VGlyph. VCairoCanvas. VCluster}.
	cluster := VCluster new
						basedOn:[ :model | model];
						forOchiaiCollections.
	shape := RTCompositeShape new.
	shape add: (RTVisualID for: [:obj| cluster id: obj dependentClasses.]).
	shape add: RTLabel new.
	shape vertical.
	es := shape elementsOn: objects.
	v addAll: es.
	RTFlowLayout on: es.
	es @ RTDraggable.
	v open