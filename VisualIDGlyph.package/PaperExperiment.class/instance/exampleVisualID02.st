public - example
exampleVisualID02
	<script: 'self new exampleVisualID02 inspect'>

	| v keys b |
	v := {#A -> { #B . #C} . #C -> {#A }. #B -> {#A} . #D -> {#E} . #F -> {#E} }.
	keys := (v asDictionary keys, (v asDictionary values flatCollect: #yourself)) asSet.

	b := RTMondrian new.
	b shape glyph
		basedOn: [ :c | v asDictionary at: c ifAbsent: [ #(1 2 3) ] ];
		withTextAbove.
	b nodes: keys.
	b layout grid gapSize: 20.
	^ b