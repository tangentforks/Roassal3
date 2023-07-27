Extension { #name : #RSBitmap }

{ #category : #'*Roassal3-GToolkit' }
RSBitmap >> asBlGeometry [

	^ BlRectangleGeometry new
]

{ #category : #'*Roassal3-GToolkit' }
RSBitmap >> blPaint [

	^ BlImageBackground image: form
]
