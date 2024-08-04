using CatalogService as service from '../../srv/interaction_srv';
annotate service.proj_Headers with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'partner',
                Value : partner,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Country_code',
                Value : Country_code,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'partner',
            Value : partner,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Country_code',
            Value : Country_code,
        },
    ],
);

