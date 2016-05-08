demos
levelDemo
"Creates a Visual ID for every class within RTShape using the same name clustering as in doodleWithNameClustering"
	| v es shape  id allNodes|
	id := (VisualID randomFor:'juampi') glyph.
	id inspect.
	allNodes := id withAllGlyphs reject:#isNull.
	v := RTView new.
	v @ RTDraggableView.
	shape := RTCompositeShape new.
	"shape add: RTLabel new."
	shape add: (RTVisualID for: [:glyph | VisualID new glyph:glyph;yourself]).
	shape vertical.
	es := shape elementsOn: allNodes.
	v addAll: es @ RTDraggable.
	RTEdgeBuilder new
		view: v;
		objects: allNodes;
		connectFrom: #parent.
	RTDominanceTreeLayout on: v elements edges: v edges.
	v @ RTDraggableView.
	v edges do: [ :e | e trachelShape pushBack ].
	v
	