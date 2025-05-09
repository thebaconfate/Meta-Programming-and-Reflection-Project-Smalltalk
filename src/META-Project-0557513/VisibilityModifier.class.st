"
""Helper class to help with adding protected methods to classes""
"
Class {
	#name : 'VisibilityModifier',
	#superclass : 'Object',
	#category : 'META-Project-0557513',
	#package : 'META-Project-0557513'
}

{ #category : 'testing' }
VisibilityModifier >> isProtectedMethod: aMethod [
	"Checks if a method has a protected pragma"
	^ aMethod sourceCode includes: '<protected>'.
]

{ #category : 'as yet unclassified' }
VisibilityModifier >> mangleSelector: aSelector [
	"Mangles a selector by prefixing it with '__'"
	^ '__', aSelector name
]
