Extension { #name : #PHCCatalogEntry }

{ #category : #'*Pharo-Compendium-Plugins-Catalog-UI' }
PHCCatalogEntry class >> contextCommands [

	^#(PHCBrowseItemURLCommand PHCInstallStableVersionCommand PHCLoadConfigurationCommand)
]

{ #category : #'*Pharo-Compendium-Plugins-Catalog-UI' }
PHCCatalogEntry class >> detailPresenters [ 

	^#(PHCCatalogItemFormPresenter)
]

{ #category : #'*Pharo-Compendium-Plugins-Catalog-UI' }
PHCCatalogEntry >> systemIcon [ 

	^PHCIconCache iconForClass: ((Smalltalk globals includesKey: self packageName asSymbol) 
											ifTrue: [ #PHCCatalogEntryLoaded ]
											ifFalse: [ #PHCCatalogEntry ])


]
