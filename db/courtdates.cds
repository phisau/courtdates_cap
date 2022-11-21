namespace cd;

using {
    managed,
    temporal,
    sap,
    cuid
} from '@sap/cds/common';

type Name  : String(100);
type SDATE : Date;

entity county : managed {
    key ID   : Integer;
        COUNTY_NAME : String(50);
};

entity officer : managed {
    key ID         : Integer;
        FIRSTNAME  : Name;
        MIDDLENAME : Name;
        LASTNAME   : Name;
        RANK       : String(20);
        COUNTY     : Association to one county;
};

entity attorney : managed {
    key ID         : Integer;
        FIRSTNAME  : Name;
        MIDDLENAME : Name;
        LASTNAME   : Name;
        COUNTY     : Association to county;


};

entity client : managed {
    key ID         : Integer;
        FIRSTNAME  : Name;
        MIDDLENAME : Name;
        LASTNAME   : Name;
        COUNTY     : Association to county;

};

entity offence {
    key ID   : Integer;
        OFFENCE_NAME : String(200);
        CLS  : String(50);
};

entity room {

    key ID     : Integer;
        ROOM_NAME   : Name;
        COUNTY : Association to one county;
};

entity appearance {
    key ID          : Integer;
        CASENUMBER  : Integer;
        FILENUMBER1 : String(20);
        FILENUMBER2 : String(20);
        OFFENCE     : Association to offence;
        DEFENDANT   : Association to one client;
        OFFICER     : Association to one officer;
        COUNTY      : Association to one county;
        COURTDATE   : SDATE;
        COURTROOM   : Association to one room;
        BOND        : Integer;
        BONDATTR    : String(50);
};

entity staging : cuid {
        CASENUMBER  : String(10);
        FILENUMBER1 : String(20);
        FILENUMBER2 : String(20);
        OFFENCE     : String(100);
        DEFENDANT   : String(100);
        OFFICER     : String(100);
        COUNTY      : String(100);
        COURTDATE   : String(10);
        COURTROOM   : String(100);
        BOND        : String(15);
        BONDATTR    : String(50);

};
