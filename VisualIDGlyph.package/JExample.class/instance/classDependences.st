examples
classDependences
	|cluster shape elements v|
	shape := RTVisualID new.
	cluster := VCluster new  
								basedOn:[ :model | model dependentClasses]; " comparing dependent classes to measure similarity"
								comparator: VJaccard new.                   " using Jaccard algorithm"
	shape visualID:[ :ele |  cluster id:ele ]. "cluster is a factory, create a visualID for element"
	shape width:[ :ele | 100  ].
	shape height:[ :ele | 100 ].
	shape lineColor:[ :ele| Color random].
	shape shadowColor:[ :ele| Color random].
	elements := shape elementsOn: (SequenceableCollection withAllSubclasses).
	v := RTView new.
	v addAll: elements.
	RTFlowLayout on: elements.
	elements @ RTDraggable.
	v open.
	