Extension { #name : #RSPolyline }

{ #category : #'*Roassal3-GToolkit' }
RSPolyline >> asBlGeometry [

	^ BlPolylineGeometry new
]

{ #category : #'*Roassal3-GToolkit' }
RSPolyline >> updateBlGeometry: aBlGeometry [

	aBlGeometry vertices: self controlPoints
]