public - example
exampleGraph02
	<script: 'self new exampleGraph02 inspect'>

	| v keys b nodes |
	v := {#A -> { #B . #C} . #C -> {#A }. #B -> {#A} . #D -> {#E} . #F -> {#E} }.
	keys := (v asDictionary keys, (v asDictionary values flatCollect: #yourself)) asSet asSortedCollection.

	b := RTMondrian new.
	b shape circle size: 30; color: Color blue trans.
	nodes := b nodes: keys.
	nodes @ RTLabeled.
	b shape arrowedLine; shortestDistanceAttachPoint.
	b edges connectToAll: [ :k  | v asDictionary at: k ifAbsent: #() ].
	b layout force charge: -500; length: 90.
	^ b