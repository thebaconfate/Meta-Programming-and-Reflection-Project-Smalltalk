Class {
	#name : 'MethodProtecterVisitor',
	#superclass : 'RBProgramNodeVisitor',
	#category : 'META-Project-0557513',
	#package : 'META-Project-0557513'
}

{ #category : 'visiting' }
MethodProtecterVisitor >> visitMethodNode: aMethodNode [
	super visitMethodNode: aMethodNode.
	(aMethodNode hasPragmaNamed: #protected) ifTrue: [ aMethodNode selector: ('__', aMethodNode selector asString) asSymbol ].
]
