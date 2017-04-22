message tracing
setupTraceOn: anObject
	"Set up the message send trace on the supplied object"

	| trace mutation |

	trace := self new target: anObject.
	mutation := GHObjectMutation behaviour: trace.
	mutation mutate: anObject.
	^trace