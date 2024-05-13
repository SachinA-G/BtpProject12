using MyService as service from '../../srv/service';

annotate service.college with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : c_name,
            Label : 'cname',
            ![@UI.Importance] : #Low,
        },
        {
            $Type : 'UI.DataField',
            Label : 'c_adrs',
            Value : c_adrs,
        },
    ]
);
annotate service.college with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'c_name',
                Value : c_name,
            },
            {
                $Type : 'UI.DataField',
                Label : 'c_adrs',
                Value : c_adrs,
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
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'sachinnnnn',
            ID : 'sachinnnnn',
            Target : '@UI.FieldGroup#sachinnnnn',
        },
    ]
);
annotate service.college with @(
    UI.FieldGroup #sachinnnnn : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : c_name,
                Label : 'c_name',
            },],
    }
);

annotate service.college with @(
    UI.SelectionPresentationVariant #table : {
        $Type : 'UI.SelectionPresentationVariantType',
        PresentationVariant : {
            $Type : 'UI.PresentationVariantType',
            Visualizations : [
                '@UI.LineItem',
            ],
        },
        SelectionVariant : {
            $Type : 'UI.SelectionVariantType',
            SelectOptions : [
            ],
        },
    }
);

annotate service.college with {
    c_name @UI.MultiLineText : true
};
annotate service.college with {
    c_name @Common.FieldControl : #Optional
};
annotate service.college with {
    c_adrs @Common.Text : c_name
};
annotate service.college with @(
    UI.HeaderInfo : {
        TypeName : '23456',
        TypeNamePlural : '',
        ImageUrl : c_adrs,
        TypeImageUrl : 'sap-icon://accelerated',
    }
);
