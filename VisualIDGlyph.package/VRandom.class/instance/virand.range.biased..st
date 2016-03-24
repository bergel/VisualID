action
virand: base range: limit biased: bias_expt
	|range|
	range := limit - base.
  	^  base + (range * ((VRandom default next)** bias_expt)).