using { cd.masterdata as my
 } from '../db/schema/courtdates-MD';
service cdService {
//    entity Officer as projection on cd.Officer;
    entity County as projection on my.County;
/*    entity Attorney as projection on Attorney;
    entity Appearance as projection on Appearance;  */
}