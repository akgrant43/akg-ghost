baseline
baseline: spec
	<baseline>
	spec for: #common do: [ spec 
		configuration: 'Beacon' with: [ spec 
			versionString: #development;
			repository: 'http://smalltalkhub.com/mc/girba/Beacon/main' ];
		configuration: 'Ghost' with: [ spec 
			versionString: #stable;
			repository: 'http://smalltalkhub.com/mc/Pharo/Ghost/main' ];

		package: 'AKG-Ghost' with: [ 
			spec requires: #('Beacon' 'Ghost') ];
		
		group: 'default' with: #('AKG-Ghost');
		group: 'tests' with: #('AKG-Ghost-Tests');
		group: 'development' with: #('default' 'tests')
		]