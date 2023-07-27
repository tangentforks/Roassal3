Extension { #name : #LinearGradientPaint }

{ #category : #'*Roassal3-GToolkit' }
LinearGradientPaint >> asBlBackground [

	^ (BlLinearGradientPaint new
		  start: self start;
		  end: self stop;
		  stops: self colorRamp;
		  yourself) asBlBackground
]
