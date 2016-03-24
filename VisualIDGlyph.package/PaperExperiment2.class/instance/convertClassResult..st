public - measuring score
convertClassResult: groupsOfClasses
	"
	self new convertClassResult:  { 
		{ BitmapCharacterSet . CharacterSet . CharacterSetComplement } .  
		{ FMMultivalueLink . FMNullMultivalueLink } .
		{ WeakHashSet . WeakKeyHashTable } .
		{ IdentityHashSet . WeakKeyIdentityHashTable }
		}
	"

	^ groupsOfClasses collect: [ :g |
		g collect: [ :cls |
			classes indexOf: cls ]
		]