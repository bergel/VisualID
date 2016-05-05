hooks
scoreForPerfect
	"Override this method to return a number between 0.0 and 1.0. This method is used to define what it means to have matches between classes. Jaccard comparison has to be equal or greater than the value return by scoreForPerfect."
	^ 1