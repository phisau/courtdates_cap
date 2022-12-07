namespace cd.masterdata;

using {
    managed,
    temporal,
    sap,
    cuid
} from '@sap/cds/common';

type Name  : String(100);
type SDATE : Date;

entity County : managed {
    key ID   : Integer;
        COUNTY_NAME : String(50);
};

entity Officer : managed {
    key ID         : Integer;
        FIRSTNAME  : Name;
        MIDDLENAME : Name;
        LASTNAME   : Name;
        RANK       : String(20);
        COUNTY     : Association to one County;
};

entity Attorney : managed {
    key ID         : Integer;
        FIRSTNAME  : Name;
        MIDDLENAME : Name;
        LASTNAME   : Name;
//        COUNTY     : Association to county;
};

entity Client : managed {
    key ID         : Integer;
        FIRSTNAME  : Name;
        MIDDLENAME : Name;
        LASTNAME   : Name;
        COUNTY     : Association to one County;

};

entity Offence : managed {
    key ID   : Integer;
        OFFENCE_NAME : String(200);
        CLS  : String(50);
};

entity Room {

    key ID     : Integer;
        ROOM_NAME   : Name;
        COUNTY : Association to one County;
};
