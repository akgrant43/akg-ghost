tracing
logStatsFor: anObject

	| logger |

	logger := self new.
	logger trace: (ExternalSendTrace setupTraceOn: anObject).
	^logger.