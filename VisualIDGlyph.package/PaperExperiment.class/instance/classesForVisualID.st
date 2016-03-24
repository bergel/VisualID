utility
classesForVisualID
	"
	self new classesForDSM
	"

	^ classes sortedAs: [ :cls | cls name size ]