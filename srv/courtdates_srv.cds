using {cd.masterdata as md} from '../db/schema/courtdates-MD';
using {cd.transaction as tr} from '../db/schema/courtdates-transaction';

service cdService {
    //    entity Officer as projection on cd.Officer;
    entity County     as projection on md.County;
    entity Officer    as projection on md.Officer;

    entity Appearance @(restrict : [
        {
            grant: [ 'READ' ],
            to :  [ 'Viewer']
        }
    ]) as
        select from tr.Appearance {
            COURTDATE,
            FILENUMBER1,
            FILENUMBER2,
            COUNTY.COUNTY_NAME as CountyName,
            COURTROOM.ROOM_NAME as RoomName,
            DEFENDANT.LASTNAME as DefendantLastname,
            DEFENDANT.FIRSTNAME as DefendantFirstname,
            Attorney.LASTNAME as Attorney,
            OFFENCE.OFFENCE_NAME as Offence,
            OFFICER.LASTNAME as Officer,
            BOND
        } order by COURTDATE asc;
/*    entity Attorney as projection on Attorney;
    entity Appearance as projection on Appearance;  */
}
