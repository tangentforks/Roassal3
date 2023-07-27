Extension { #name : #RSCanvas }

{ #category : #'*Roassal3-GToolkit' }
RSCanvas >> host [

	^ host
]

{ #category : #'*Roassal3-GToolkit' }
RSCanvas >> updateBlElement: aRSCanvasElement [

	"TODO"
]

{ #category : #'*Roassal3-GToolkit' }
RSCanvas >> useBlocHost [

	host := RSBlocHost new
		        canvas: self;
		        yourself
]
