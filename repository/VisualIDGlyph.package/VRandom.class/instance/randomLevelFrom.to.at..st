action
randomLevelFrom: min to: max at: level
	^ min + (((self next)* (max-min))/(level +1.0)).