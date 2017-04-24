Record a count of each time a message is sent to the target object by some other object.

Public API and Key Messages

- logStatsFor: creates an instance of the receiver on the specified object.
- stats answers the dictionary containing the message counts.

| point stats |

point := 2@3.
stats := ExternalSendStats logStatsFor: point.
point x; y.
stats stats at: #x. "1"
 
Internal Representation and Key Implementation Points.

    Instance Variables
	stats:		<Dictionary> key: message name, value: send count
	trace:		<ExternalSendTrace>


    Implementation Points