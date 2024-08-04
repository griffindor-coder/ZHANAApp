sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'interactionitems',
            componentId: 'proj_HeadersList',
            contextPath: '/proj_Headers'
        },
        CustomPageDefinitions
    );
});