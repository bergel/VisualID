initialization
initialize
	super initialize.
	"self visualID: VisualID nil."
	"self visualID: [ :anObject | VisualID for: anObject hash ]."
	self lineColor: Color gray.
	self shadowColor: Color white.

	basedOn := [ :anObject | anObject asString ].
	cluster := VCluster new  
			basedOn: basedOn; 
			comparator: VJaccard new.
	self visualID: [ :ele |  cluster id: ele ]