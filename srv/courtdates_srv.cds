using cd from '../db/courtdates';
service CatalogService {

 entity staging
    as projection on cd.staging;

}