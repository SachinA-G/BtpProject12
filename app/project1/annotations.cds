using MyService as service from '../../srv/service';

annotate service.student with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'std_name',
            Value : std_name,
        },
        {
            $Type : 'UI.DataField',
            Label : 'std_adrs',
            Value : std_adrs,
        },
    ]
);
annotate service.student with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'std_name',
                Value : std_name,
            },
            {
                $Type : 'UI.DataField',
                Label : 'std_adrs',
                Value : std_adrs,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
    ]
);
