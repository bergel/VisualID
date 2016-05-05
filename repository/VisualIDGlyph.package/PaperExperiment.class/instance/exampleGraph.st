public - example
exampleGraph
	<script: 'self new exampleGraph inspect'>

	| v keys b nodes |
	v := {#A -> { #B . #C} . #B -> {#A} . #D -> {#E} }.
	keys := {#A . #B . #C . #D . #E }.

	b := RTMondrian new.
	b shape circle size: 30; color: Color blue trans.
	nodes := b nodes: keys.
	nodes @ RTLabeled.
	b shape arrowedLine; shortestDistanceAttachPoint.
	b edges connectToAll: [ :k  | v asDictionary at: k ifAbsent: #() ].
	b layout force charge: -500; length: 90.
	^ b