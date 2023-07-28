Extension { #name : #RSCanvas }

{ #category : #'*Roassal3-GToolkit' }
RSCanvas >> gtLiveFor: aView [
	<gtView>
	^ aView explicit
		title: 'Bloc';
		priority: 100;
		stencil: [self host canvasElement removeFromParent]
]

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
