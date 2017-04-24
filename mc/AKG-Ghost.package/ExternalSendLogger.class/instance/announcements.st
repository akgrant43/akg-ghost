accessing
announcements
	"Answer the collection of announcements recorded by the logger"
	
	^self logger recordings collect: [ :each | each target ].