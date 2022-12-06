using {
    cd.officer as officer,
    cd.attorney as attorney,
    cd.appearance as appearance,
    cd.V_MAR_COUNTY as V_MAR_COUNTY,
//    cd.VIEW_MAR,
    cd 
 } from '../db/courtdates';
service MasterDataService @(path : '/MasterDataService') {
    entity officer as projection on cd.officer;
    entity attorney as projection on cd.attorney;
    entity appearance as projection on cd.appearance;  
    entity v_mar_county as projection on V_MAR_COUNTY;
//    entity view_mar as projection on cd.VIEW_MAR;
}