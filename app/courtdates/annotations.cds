using cdService as service from '../../srv/courtdates_srv';

annotate service.Appearance with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'ID',
            Value : ID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'CASENUMBER',
            Value : CASENUMBER,
        },
        {
            $Type : 'UI.DataField',
            Label : 'FILENUMBER1',
            Value : FILENUMBER1,
        },
        {
            $Type : 'UI.DataField',
            Label : 'FILENUMBER2',
            Value : FILENUMBER2,
        },
        {
            $Type : 'UI.DataField',
            Label : 'OFFENCE_ID',
            Value : OFFENCE_ID,
        },
    ]
);
annotate service.Appearance with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'ID',
                Value : ID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'CASENUMBER',
                Value : CASENUMBER,
            },
            {
                $Type : 'UI.DataField',
                Label : 'FILENUMBER1',
                Value : FILENUMBER1,
            },
            {
                $Type : 'UI.DataField',
                Label : 'FILENUMBER2',
                Value : FILENUMBER2,
            },
            {
                $Type : 'UI.DataField',
                Label : 'OFFENCE_ID',
                Value : OFFENCE_ID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'DEFENDANT_ID',
                Value : DEFENDANT_ID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'OFFICER_ID',
                Value : OFFICER_ID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'COUNTY_ID',
                Value : COUNTY_ID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'COURTDATE',
                Value : COURTDATE,
            },
            {
                $Type : 'UI.DataField',
                Label : 'COURTROOM_ID',
                Value : COURTROOM_ID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'BOND',
                Value : BOND,
            },
            {
                $Type : 'UI.DataField',
                Label : 'BONDATTR',
                Value : BONDATTR,
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
