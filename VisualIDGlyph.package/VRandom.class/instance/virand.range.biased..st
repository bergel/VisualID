action
virand: base range: limit biased: bias_expt
	|range|
	range := limit - base.
  	^  base + (range * ((self next)** bias_expt)).