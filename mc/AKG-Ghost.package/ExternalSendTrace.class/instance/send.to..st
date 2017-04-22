message interception
send: aMessage to: anObject

	announcer announce: (ExternalSendAnnouncement message: aMessage trace: self).
	^aMessage sendTo: target