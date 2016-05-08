=-=-=-=-
v := RTView new.

shape := RTVisualID new.
shape basedOn: [ :cls | cls name cutWhereCamelCase ].
shape threshold: 50.
elements := (shape elementsOn: RTShape withAllSubclasses).
elements @ RTPopup.
v addAll: elements.
RTGridLayout on: elements.
v
=-=-=-=-