initialization
initialize
	super initialize.
	ids := Dictionary new.
	score := 50.
	based := [ :obj| obj ].