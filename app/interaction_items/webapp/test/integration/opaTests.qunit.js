sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'interactionitems/test/integration/FirstJourney',
		'interactionitems/test/integration/pages/proj_HeadersList',
		'interactionitems/test/integration/pages/proj_HeadersObjectPage',
		'interactionitems/test/integration/pages/proj_ItemsObjectPage'
    ],
    function(JourneyRunner, opaJourney, proj_HeadersList, proj_HeadersObjectPage, proj_ItemsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('interactionitems') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheproj_HeadersList: proj_HeadersList,
					onTheproj_HeadersObjectPage: proj_HeadersObjectPage,
					onTheproj_ItemsObjectPage: proj_ItemsObjectPage
                }
            },
            opaJourney.run
        );
    }
);