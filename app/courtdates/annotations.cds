using cdService as service from '../../srv/courtdates_srv';

annotate service.Appearance with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'COUNTY',
            Value : CountyName,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Courtdate',
            Value : COURTDATE,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Courtroom',
            Value : RoomName,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Defendant Lastname',
            Value : DefendantLastname,
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
            Label : 'Offence Name',
            Value : Offence,
        },
    ]
);
annotate service.Appearance with @(
    UI.FieldGroup#Main: {
        $Type : 'UI.FieldGroupType',
        Data : [
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
                Label : 'Offence',
                Value : Offence,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Defendant Lastname',
                Value : DefendantLastname,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Officer',
                Value : Officer,
            },
            {
                $Type : 'UI.DataField',
                Label : 'COUNTY',
                Value : CountyName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Courtdate',
                Value : COURTDATE,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Courtroom',
                Value : RoomName,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'Main',
            Label : 'Newest Court Appearances',
            Target : '@UI.FieldGroup#Main',
        }
    ],
    UI.SelectionFields  : [CountyName, Attorney, OFFICER_ID]
    
);
