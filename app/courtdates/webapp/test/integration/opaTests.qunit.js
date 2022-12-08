sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'ns/courtdates/test/integration/FirstJourney',
		'ns/courtdates/test/integration/pages/AppearanceList',
		'ns/courtdates/test/integration/pages/AppearanceObjectPage'
    ],
    function(JourneyRunner, opaJourney, AppearanceList, AppearanceObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('ns/courtdates') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheAppearanceList: AppearanceList,
					onTheAppearanceObjectPage: AppearanceObjectPage
                }
            },
            opaJourney.run
        );
    }
);