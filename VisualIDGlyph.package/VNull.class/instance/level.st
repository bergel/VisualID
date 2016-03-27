hooks
level
	^ parent ifNil: [ 0 ] ifNotNil: [ super level ]