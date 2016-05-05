utility
classesForDSM
	"
	self new classesForDSM
	"

	^ classes sortedAs: [ :cls | cls name reverse ]