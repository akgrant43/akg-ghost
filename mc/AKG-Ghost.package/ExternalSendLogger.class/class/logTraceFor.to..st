tracing
logTraceFor: anObject to: beaconLogger
	"Log messages sent to anObject using the Beacon framework.
	It is up to the caller to start and stop the required logger."
	| esLogger |

	esLogger := self new.
	esLogger logger: beaconLogger.
	esLogger trace: (ExternalSendTrace setupTraceOn: anObject).
	^esLogger