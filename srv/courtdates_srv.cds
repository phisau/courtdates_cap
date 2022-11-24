using cd from '../db/courtdates';



service CatalogService {

 entity staging
    as projection on cd.staging;

entity officer as projection on cd.officer;
entity appearance as projection on cd.appearance;
}