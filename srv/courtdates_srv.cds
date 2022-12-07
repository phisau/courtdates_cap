using { cd.masterdata as md 
 } from '../db/schema/courtdates-MD';
using { cd.transaction as tr } from '../db/schema/courtdates-transaction';
service cdService {
//    entity Officer as projection on cd.Officer;
    entity County as projection on md.County;
    entity Appearance as projection on tr.Appearance;
/*    entity Attorney as projection on Attorney;
    entity Appearance as projection on Appearance;  */
}