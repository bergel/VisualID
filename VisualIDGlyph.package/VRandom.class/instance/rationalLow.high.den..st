action
rationalLow: lowNum high: hiNum den: denominator
	|numerator|
	numerator := (self randomFrom: lowNum to: hiNum).
	^ numerator / denominator