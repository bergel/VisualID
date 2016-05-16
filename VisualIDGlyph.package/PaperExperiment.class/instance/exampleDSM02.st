public - example
exampleDSM02
	<script: 'self new exampleDSM02 inspect'>

	| v keys dsm |
	v := {#A -> { #B . #C} . #C -> {#A }. #B -> {#A} . #D -> {#E} . #F -> {#E} }.
	keys := (v asDictionary keys, (v asDictionary values flatCollect: #yourself)) asSet asSortedCollection.

	dsm := RTDSM new.
	dsm rotation: 0.
	dsm objects: keys.
	dsm dependency: [ :k  | v asDictionary at: k ifAbsent: #() ].
	^ dsm
