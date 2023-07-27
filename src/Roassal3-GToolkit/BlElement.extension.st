Extension { #name : #BlElement }

{ #category : #'*Roassal3-GToolkit' }
BlElement >> roassalShape [

	^ self userData at: #roassalShape
]

{ #category : #'*Roassal3-GToolkit' }
BlElement >> roassalShape: aRSShape [

	self userData at: #roassalShape put: aRSShape
]

{ #category : #'*Roassal3-GToolkit' }
BlElement >> updateFromRoassalShape [

	self roassalShape updateBlElement: self.
	self childrenDo: [ :each | each updateFromRoassalShape ]
]
