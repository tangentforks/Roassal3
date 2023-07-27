Extension { #name : #RSBezier }

{ #category : #'*Roassal3-GToolkit' }
RSBezier >> asBlElement [
	"Note: We don't use the geometry's #asElement because it answers an element that doesn't use the 'blPaint' to fill."

	^ BlElement new
		  roassalShape: self;
		  geometry: self asBlGeometry;
		  outskirts: BlOutskirts centered;
		  in: [ :e | self updateBlElement: e ];
		  yourself
]

{ #category : #'*Roassal3-GToolkit' }
RSBezier >> asBlGeometry [

	^ BlBezierCurveGeometry new
]

{ #category : #'*Roassal3-GToolkit' }
RSBezier >> updateBlGeometry: aBlGeometry [

	aBlGeometry controlPoints: self controlPoints
]
