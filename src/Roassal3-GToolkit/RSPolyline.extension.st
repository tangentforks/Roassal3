Extension { #name : #RSPolyline }

{ #category : #'*Roassal3-GToolkit' }
RSPolyline >> asBlGeometry [

	^ BlPolyline new
]

{ #category : #'*Roassal3-GToolkit' }
RSPolyline >> updateBlGeometry: aBlGeometry [

	aBlGeometry vertices: self controlPoints
]
