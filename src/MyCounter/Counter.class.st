Class {
	#name : #Counter,
	#superclass : #Object,
	#instVars : [
		'count'
	],
	#category : #MyCounter
}

{ #category : #accessing }
Counter class >> startingAt: integer [
	^ self new count: integer
]

{ #category : #accessing }
Counter >> count [
	^ count.
]

{ #category : #accessing }
Counter >> count: anInteger [
	count := anInteger
]

{ #category : #API }
Counter >> decrement [
	count := count - 1.
]

{ #category : #accessing }
Counter >> increment [
	count := count + 1
]

{ #category : #accessing }
Counter >> initialize [
	super initialize.
	count := 0
]

{ #category : #accessing }
Counter >> printOn: aStream [
	super printOn: aStream.
	aStream  nextPutAll: ' withValue: ', count printString.
	aStream cr
]
