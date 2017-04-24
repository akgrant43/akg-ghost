tracing
logTraceFor: anObject during: aBlock
	"Log messages sent to anObject during aBlock."
	| esLogger |

	esLogger := self new.
	esLogger logger: InMemoryLogger new.
	esLogger trace: (ExternalSendTrace setupTraceOn: anObject).
	esLogger logger runDuring: aBlock.
	^esLogger.