accessing
visualID: anObject
	self visualIDElement: [ :anElement | 
		anObject rtValue: anElement model ]