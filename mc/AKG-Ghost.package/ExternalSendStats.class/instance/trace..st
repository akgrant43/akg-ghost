accessing
trace: anExernalSendTrace

	trace := anExernalSendTrace.
	trace announcer subscribe: ExternalSendAnnouncement do: 
		[ :announcement :announcer | self addStatsFor: announcement ].