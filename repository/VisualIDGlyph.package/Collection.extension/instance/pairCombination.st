*VisualIDGlyph-CoreGlyph
pairCombination 
  " 
  #(1 2 3) pairCombination 
  " 
  | r | 
  r := OrderedCollection new. 
  self copy do: [ :x | 
    self do: [ :y | 
      (x ~~ y) ifTrue: [ 
        ((r includes: { x . y }) not and: [ (r includes: { y . x }) not ]) 
          ifTrue: [ r add: { x . y } ] 
      ] 
    ] 
  ]. 
  ^ r