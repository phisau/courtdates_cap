using cdService from './courtdates_srv';

annotate cdService.Appearance with {
    COURTDATE @title : 'Date';
    COUNTY_NAME @title : 'County';
    OFFENCE_NAME @title: 'Offence'; 
    OFFICER @title: 'Officer'; 

} ;
/*annotate cdService.Appearance with @(
    UI: {
        HeaderInfo  : {
            $Type : 'UI.HeaderInfoType',
            TypeName : 'Appearance',
            TypeNamePlural : 'Appearances'
        },
    }
);*/

annotate cdService.Appearance with {
    COUNTY @(
        Common: {
            Text: COUNTY.COUNTY_NAME, TextArrangement: #TextOnly,
            ValueList: {
                Label: 'County',
                CollectionPath: 'County',
                Parameters: [
                    { $Type: 'Common.ValueListParameterInOut',
                        LocalDataProperty: COUNTY_ID,
                        ValueListProperty: 'ID'
                    },
                    { $Type: 'Common.ValueListParameterDisplayOnly',
                        ValueListProperty: 'COUNTY_NAME'
                    }
                ]
            }
        }
    );
};
annotate cdService.Appearance with {
    COURTDATE @(
        Common: {
            ValueList: {
                Label: 'Date',
                CollectionPath: 'Appearance',
                Parameters: [
                    { $Type: 'Common.ValueListParameterInOut',
                        LocalDataProperty: COURTDATE,
                        ValueListProperty: 'COURTDATE'
                    }
            ]
            }
        }
    );
};

annotate cdService.Attorney with {
    Attorney @(
         Common: {
            Text: Attorney.LASTNAME, TextArrangement: #TextOnly,
            ValueList: {
                Label: 'Attorney',
                CollectionPath: 'Attorney',
                Parameters: [
                    { $Type: 'Common.ValueListParameterInOut',
                        LocalDataProperty: Attorney_ID,
                        ValueListProperty: 'ID'
                    },
                    { $Type: 'Common.ValueListParameterDisplayOnly',
                        ValueListProperty: 'LASTNAME'
                    }
                ]
            }
        }
        
    );
};
annotate cdService.Appearance with {
    OFFICER @( 
         Common: {
            Text: OFFICER.LASTNAME, TextArrangement: #TextOnly,
            ValueList: {
                Label: 'Officer',
                CollectionPath: 'Officer',
                Parameters: [
                    { $Type: 'Common.ValueListParameterInOut',
                        LocalDataProperty: OFFICER_ID,
                        ValueListProperty: 'ID'
                    },
                    { $Type: 'Common.ValueListParameterDisplayOnly',
                        ValueListProperty: 'LASTNAME'
                    }
                ]
            }
        }
        
    );
};
