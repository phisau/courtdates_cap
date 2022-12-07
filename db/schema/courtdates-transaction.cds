namespace cd.transaction;
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
