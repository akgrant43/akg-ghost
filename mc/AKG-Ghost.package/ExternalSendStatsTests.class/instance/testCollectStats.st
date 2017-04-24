tests
testCollectStats

	| point trace |

	point := 2@3.
	trace := ExternalSendStats logStatsFor: point.
	point
		x;
		y;
		angle;
		x.
	self assert: trace stats size equals: 3.
	self assert: (trace stats at: #x) equals: 2.
	self assert: (trace stats at: #y) equals: 1.
	self assert: (trace stats at: #angle) equals: 1.