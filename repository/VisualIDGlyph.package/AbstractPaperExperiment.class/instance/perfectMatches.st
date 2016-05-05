accessing
perfectMatches
	"
	self new perfectMatches
	"

	| result |
	"We get all the top elements"
	result := similarities
		select: [ :tupple | tupple third >= self scoreForPerfect ].

	"We make sure we have no doublon"
	^ result reject: [ :tupple | tupple first name > tupple second name ]