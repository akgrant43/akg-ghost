baseline
baseline: spec
	<baseline>
	spec for: #common do: [ spec 
		configuration: 'Ghost' with: [ spec 
			versionString: #stable;
			repository: 'http://smalltalkhub.com/mc/Pharo/Ghost/main' ];

		package: 'AKG-Ghost';
		
		group: 'default' with: #('AKG-Ghost');
		group: 'tests' with: #('AKG-Ghost-Tests');
		group: 'development' with: #('default' 'tests')
		]