accessing
perfectMatchesPairs
	^ self perfectMatches collect: [ :tupple | { classes at: tupple first . classes at: tupple second } ]