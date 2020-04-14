"
Baseline for https://github.com/astares/Pharo-Compendium

(c) 2020 by T. Bergmann, astares.com
"
Class {
	#name : #BaselineOfCompendium,
	#superclass : #BaselineOf,
	#category : #BaselineOfCompendium
}

{ #category : #baseline }
BaselineOfCompendium >> baseline: spec [
	<baseline>

	spec for: #'common' do: [
		"Packages"
		spec 
			package: 'Pharo-Compendium-Core';
			package: 'Pharo-Compendium-Core-Tests' with: [ spec requires: #('Pharo-Compendium-Core' ) ].
		
		spec package: 'Pharo-Compendium-Help'.
					
		spec package: 'Pharo-Compendium-UI' with: [ spec requires: #('Pharo-Compendium-Core' 'Pharo-Compendium-Help') ].	
			
		"Groups"	
		spec 
			group: 'Core' with: #('Pharo-Compendium-Core' );
			group: 'UI' with: #('Pharo-Compendium-UI' );
			group: 'Help' with: #('Pharo-Compendium-Help');
			group: 'Tests' with: #('Pharo-Compendium-Core-Tests' );
			group: 'all' with: #('Core' 'Help' 'UI' 'Tests' );
			group: 'default' with: #('all' ) 
	]
]