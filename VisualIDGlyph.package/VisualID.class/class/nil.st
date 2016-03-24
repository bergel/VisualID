factory
nil
	"
	Return a visual id for the nil object. This is cached.
	Used when you create a visual Id
	
	:: Void -> VisualID
	"
	
	nilVisual notNil ifTrue: [ ^ nilVisual ].
	nilVisual := self randomFor: nil.
	^ nilVisual