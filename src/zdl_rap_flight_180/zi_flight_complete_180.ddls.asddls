@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Composite - Voos Completos'
@Metadata.ignorePropagatedAnnotations: false
define root view entity zi_flight_complete_180
  as select from zi_flight_180
  association [1..1] to zi_flight_status_180 as _Stats    on $projection.Id = _Stats.Id
  association [1..1] to zi_flight_city_180   as _CityFrom on $projection.CityFrom = _CityFrom.Id
  association [1..1] to zi_flight_city_180   as _CityTo   on $projection.CityTo = _CityTo.Id

{
  key Id,
      DepartureDate,
      ArrivalDate,
      CityFrom,
      _CityFrom.Description              as CityFromDescription,
      CityTo,
      _CityTo.Description                as CityToDescription,
      Price,
      Waers,
      Status,
      _Stats.Description                 as StatusDescription,

      //      ICone
      @Semantics.imageUrl: true
      case when Status = 1 then 'sap-icon://pending'
           when Status = 2 then 'sap-icon://accept'
           else 'sap-icon://decline' end as Icon,

      case when Status = 1 then 0
      when Status = 2 then 3
      else 1 end                         as Criticality,

      _Stats,
      _CityFrom,
      _CityTo
}
