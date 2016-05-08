*VisualIDGlyph-CoreGlyph
includesPair: aPair 
  " 
  #(#(1 2) #(4 5)) includesPair: #(2 1) 
  " 
  self assert: [ aPair isCollection and: [ aPair size = 2 ] ]. 
  ^ (self includes: aPair) or: [ self includes: (Array with: aPair second with: aPair first) ]