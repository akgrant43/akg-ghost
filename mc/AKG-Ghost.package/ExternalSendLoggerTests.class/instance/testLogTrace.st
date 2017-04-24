tests
testLogTrace
	| point logger announcements |
	point := 2 @ 3.
	logger := ExternalSendLogger
		logTraceFor: point
		during: [ point
				x;
				y;
				angle;
				x ].
	announcements := logger announcements.
	self assert: announcements size equals: 4.
	self assert: announcements first message selector equals: #x.
	self assert: announcements first message args size equals: 0.
	self assert: (announcements collect: [ :each | each message selector ]) asSet 
			equals: #(#x #y #angle) asSet.