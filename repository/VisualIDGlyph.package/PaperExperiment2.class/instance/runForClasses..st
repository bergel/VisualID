public - measuring score
runForClasses: groupsOfClasses

	"
	self new runForClasses: { 
		{ BitmapCharacterSet . CharacterSet . CharacterSetComplement } .  
		{ FMMultivalueLink . FMNullMultivalueLink } .
		{ WeakHashSet . WeakKeyHashTable } .
		{ IdentityHashSet . WeakKeyIdentityHashTable }
		}
	"
	
	^ self run: (self convertClassResult: groupsOfClasses)