action
random
	random ifNil:[ random:= Random seed: self seed].
	^ random