"
""Helper class to help with adding protected methods to classes""
"
Class {
	#name : 'VisibilityModifier',
	#superclass : 'Object',
	#category : 'Meta-Programming-and-Reflection',
	#package : 'Meta-Programming-and-Reflection'
}

{ #category : 'testing' }
VisibilityModifier >> isProtectedMethod: method [
	"Checks if a method has a protected pragma"
	^ method sourceCode includes: '<protected>'.
]

{ #category : 'as yet unclassified' }
VisibilityModifier >> mangleSelector: selector [
	"Mangles a selector by prefixing it with '__'"
	^ '__', selector name
]
