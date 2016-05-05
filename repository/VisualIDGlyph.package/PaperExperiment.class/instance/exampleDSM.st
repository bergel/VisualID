public - example
exampleDSM
	<script: 'self new exampleDSM inspect'>

	| v keys dsm |
	v := {#A -> { #B . #C} . #B -> {#A} . #D -> {#E} }.
	keys := {#A . #B . #C . #D . #E }.

	dsm := RTDSM new.
	dsm rotation: 0.
	dsm objects: keys.
	dsm dependency: [ :k  | v asDictionary at: k ifAbsent: #() ].
	^ dsm
