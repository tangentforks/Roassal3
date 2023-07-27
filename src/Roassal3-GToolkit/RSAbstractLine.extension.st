Extension { #name : #RSAbstractLine }

{ #category : #'*Roassal3-GToolkit' }
RSAbstractLine >> asBlElement [

	^ self asBlGeometry asElement
		  roassalShape: self;
		  in: [ :e | self updateBlElement: e ];
		  yourself
]

{ #category : #'*Roassal3-GToolkit' }
RSAbstractLine >> asBlGeometry [

	^ self subclassResponsibility
]

{ #category : #'*Roassal3-GToolkit' }
RSAbstractLine >> updateBlElement: aBlElement [
	"Update the element. Note: Unlike other shapes, the lines need to update the geometry."

	self updateBlGeometry: aBlElement geometry.

	aBlElement
		size: self encompassingRectangle extent;
		border: self blBorder;
		background: self blPaint
]

{ #category : #'*Roassal3-GToolkit' }
RSAbstractLine >> updateBlGeometry: aBlGeometry [

	self subclassResponsibility
]
