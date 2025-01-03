@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Basic - Voos Cidades'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity zi_flight_city_180
  as select from zdl_flight_ct180
{
      @EndUserText.label: 'Cidade'
  key id          as Id,
      @EndUserText.label: 'Descrição'
      description as Description
}
