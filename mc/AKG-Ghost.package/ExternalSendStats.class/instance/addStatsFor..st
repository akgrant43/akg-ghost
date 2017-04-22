private
addStatsFor: anAnnouncement

	| count messageName |

	messageName := anAnnouncement message selector.
	count := stats at: messageName ifAbsent: [ 0 ].
	stats at: messageName put: count + 1.