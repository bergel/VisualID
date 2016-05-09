sources
exampleBasic02


| v s |
v := RTView new.
s := RTVisualID new.
v add: (s elementOn: 'ignacio').
v add: (s elementOn: 'ignacia').

es := v elements.
RTGridLayout on: es.

es @ RTPopup.

^ v
