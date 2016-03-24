sources
exampleTree
	| view elements eb |
	view := RTView new.	
	elements := (RTVisualID new for:#yourself) elementsOn: (1 to: 100).
	view addAll: elements.
	eb := RTEdgeBuilder new
		view: view.
	eb shape: (RTLine new color: Color purple).
	eb
		objects: (1 to: 100);
		connectFrom: [ :v | v // 2 ].
	
	RTTreeLayout on: view elements edges: view edges.
	^ view
