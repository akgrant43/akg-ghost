instance creation
message: aMessage trace: anExternalSendTrace

	^self new
		message: aMessage;
		trace: anExternalSendTrace;
		yourself.