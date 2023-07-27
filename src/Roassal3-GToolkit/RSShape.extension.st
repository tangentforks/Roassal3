Extension { #name : #RSShape }

{ #category : #'*Roassal3-GToolkit' }
RSShape >> asBlElement [
	"Answer an instance of BlElement that represents this shape in a Bloc host.
	The returned object needs to answer #roassalShape."

	^ self subclassResponsibility
]

{ #category : #'*Roassal3-GToolkit' }
RSShape >> blBorder [

	^ self border ifNotNil: [ :b |
		  BlBorder paint: b paint width: b width ]
]

{ #category : #'*Roassal3-GToolkit' }
RSShape >> blPaint [

	^ self paint ifNil: [ Color transparent ]
]
