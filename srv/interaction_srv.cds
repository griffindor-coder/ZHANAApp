using {app.interactions} from '../db/interactions';
using V_INTERACTION from '../db/interactions';
using {sap} from '@sap/cds-common-content';

service CatalogService {

    @requires            : 'authenticated-user'
    @cds.redirection.target
    @odata.draft.enabled: true
    entity proj_Headers       as projection on interactions.Headers;


    @requires: 'Admin'
    entity proj_Items         as projection on interactions.Items;

    @readonly
    entity proj_Languages     as projection on sap.common.Languages;

    @readonly
    @restrict: [{
        grant: 'READ',
        where: 'COUNTRY_CODE = ''DE'''
    }]
    entity HeaderView         as projection on interactions.Headers;

    @readonly
    entity proj_V_INTERACTION as projection on V_INTERACTION;
}