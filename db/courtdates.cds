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

entity Appearance :cuid {
    key ID          : Integer;
        CASENUMBER  : Integer;
        FILENUMBER1 : String(20);
        FILENUMBER2 : String(20);
        OFFENCE     : Association to Offence;
        DEFENDANT   : Association to one Client;
        OFFICER     : Association to one Officer;
        COUNTY      : Association to one County;
        COURTDATE   : SDATE;
        COURTROOM   : Association to one Room;
        BOND        : Integer;
        BONDATTR    : String(50);
};

entity Staging {
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
        ATTORNEY    : String(50);

};

//context views {
//    @cds.persistence.exists
 //   entity V_MAR_COUNTY {
//        MIN_COURTDATE   : Date;
  //      MAX_COURTDATE   : Date;
//        COUNTY_NAME     : String(100);
//        OFFENCE_NAME    : String(100);
//        COUNT_OFFENCES  : Integer;
//    }
//}