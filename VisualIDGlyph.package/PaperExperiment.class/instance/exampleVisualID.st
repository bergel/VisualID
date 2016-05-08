public - example
exampleVisualID
	<script: 'self new exampleVisualID inspect'>

	| shape cluster s elements v |
	shape := RTVisualID new.
	cluster := VCluster new  
				basedOn: [ :model | model ]; 
				comparator: VString new.                   

	shape visualID:[ :ele |  cluster id: ele ]. "cluster is a factory, create a visualID for element"
	
	s := RTCompositeShape new.
	s add: RTLabel new.
	s add: shape.
	s vertical.
	elements := s elementsOn: #('Hello' 'hellooo' 'Bonjour').

	v := RTView new.
	v @ RTDraggableView.
	v addAll: elements.
	
	RTFlowLayout on: elements.
	elements @ RTDraggable.
	^ v
