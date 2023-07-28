Extension { #name : #RSLine }

{ #category : #'*Roassal3-GToolkit' }
RSLine >> asBlGeometry [

	^ BlLine new
]

{ #category : #'*Roassal3-GToolkit' }
RSLine >> updateBlGeometry: aBlGeometry [

	aBlGeometry from: self startPoint to: self endPoint
]
