namespace cd.transaction;
using { cd.masterdata as md } from './courtdates-MD';
using {
    cuid
} from '@sap/cds/common';
entity Appearance : cuid {
    key ID          : Integer;
        CASENUMBER  : Integer;
        FILENUMBER1 : String(20);
        FILENUMBER2 : String(20);
        OFFENCE     : Association to md.Offence;
        DEFENDANT   : Association to one md.Client;
        OFFICER     : Association to one md.Officer;
        Attorney    : Association to one md.Attorney;
        COUNTY      : Association to one md.County;
        COURTDATE   : md.SDATE;
        COURTROOM   : Association to one md.Room;
        BOND        : Integer;
        BONDATTR    : String(50);
};
