tracing
logTraceFor: anObject during: aBlock
	"Log messages sent to anObject during aBlock using an InMemoryLogger."
	| esLogger |

	esLogger := self logTraceFor: anObject to: InMemoryLogger new.
	esLogger logger runDuring: aBlock.
	^esLogger.