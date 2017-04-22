tracing
logTraceFor: anObject

	| logger |

	logger := self new.
	logger logger: InMemoryLogger instance.
	logger logger start.
	logger trace: (ExternalSendTrace setupTraceOn: anObject).
	^logger