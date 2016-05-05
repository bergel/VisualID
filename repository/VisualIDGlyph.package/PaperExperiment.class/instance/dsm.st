public - producing visualization
dsm
	"
	self new dsm
	"

	| dsm cls |
	cls := self classesForDSM.
	dsm := RTDSM new.
	dsm objects: cls.
	dsm dependency: #dependentClasses.
	dsm text: [ :c | cls indexOf: c ].
	dsm rotation: -90.
	^ dsm

