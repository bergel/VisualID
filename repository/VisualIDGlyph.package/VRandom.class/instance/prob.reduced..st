action
prob: probability reduced: level
	|nsteps p|
	nsteps :=6.
	p := probability * (((nsteps-level) max:1)/nsteps).
	^ self prob: p.