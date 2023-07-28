Extension { #name : #RSBoundingShape }

{ #category : #'*Roassal3-GToolkit' }
RSBoundingShape >> asBlElement [

	^ BlElement new
		  roassalShape: self;
		  geometry: self asBlGeometry;
		  in: [ :e | self updateBlElement: e ];
		  yourself
]

{ #category : #'*Roassal3-GToolkit' }
RSBoundingShape >> asBlGeometry [

	^ self subclassResponsibility
]

{ #category : #'*Roassal3-GToolkit' }
RSBoundingShape >> updateBlElement: aBlElement [
	aBlElement
		  size: self baseRectangle extent;
		  transformDo: [ :aTransform |
			  aTransform
			  	matrix: self matrix asBlMatrix;
			  	centerOrigin;
			  	translateBy: self baseRectangle extent / -2 ];
		  border: self blBorder;
		  background: self blPaint
]
