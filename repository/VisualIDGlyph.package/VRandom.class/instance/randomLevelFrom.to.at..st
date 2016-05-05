action
randomLevelFrom: min to: max at: level
	^ min + (((self random next)* (max-min))/(level +1.0)).