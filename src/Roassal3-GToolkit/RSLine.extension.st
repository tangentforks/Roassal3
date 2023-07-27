Extension { #name : #RSLine }

{ #category : #'*Roassal3-GToolkit' }
RSLine >> asBlGeometry [

	^ BlLineGeometry new
]

{ #category : #'*Roassal3-GToolkit' }
RSLine >> updateBlGeometry: aBlGeometry [

	aBlGeometry from: self startPoint to: self endPoint
]
