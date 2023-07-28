Extension { #name : #RSLabel }

{ #category : #'*Roassal3-GToolkit' }
RSLabel >> asBlElement [

	^ BlTextElement new
		  roassalShape: self;
		  background: Color transparent;
		  in: [ :e | self updateBlElement: e ];
		  yourself
]

{ #category : #'*Roassal3-GToolkit' }
RSLabel >> asBlGeometry [
	^ self shouldNotImplement
]

{ #category : #'*Roassal3-GToolkit' }
RSLabel >> blRopedText [

	| result |
	result := self text asRopedText
		foreground: self blPaint;
		fontSize: self fontSize;
		fontName: self fontName;
		yourself.

	self isBold ifTrue: [
		result bold ].
	self isItalic ifTrue: [
		result italic ].

	self isUnderlined ifTrue: [
		result underline.
		result underlineColor: self blPaint ].

	^ result
]

{ #category : #'*Roassal3-GToolkit' }
RSLabel >> updateBlElement: aBlElement [
	aBlElement text: self blRopedText.	"Force calculation of the extent"
	aBlElement computeLayout.

	aBlElement
		transformDo: [ :aBuilder | 
			aBuilder
				matrix: self matrix asBlMatrix;
				centerOrigin;
				translateBy: aBlElement extent / -2	"aBuilder transformation addTransformation:
			((BlMatrixTransformation matrix: self matrix asBlMatrix) origin:
				 BlAffineTransformationCenterOrigin new).
			aBuilder translateBy: aBlElement extent / -2" ].

	^ aBlElement
]
