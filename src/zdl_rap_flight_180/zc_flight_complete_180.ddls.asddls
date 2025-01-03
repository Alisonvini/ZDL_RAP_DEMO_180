@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption - Voos'
@Metadata.ignorePropagatedAnnotations: false
@Metadata.allowExtensions: true
@Search.searchable: true
define root view entity ZC_FLIGHT_COMPLETE_180
  as projection on zi_flight_complete_180
{
      @Search.defaultSearchElement: true
  key Id,
      @Consumption.filter: { selectionType: #INTERVAL }
      DepartureDate,
      @Consumption.filter: { selectionType: #INTERVAL }
      ArrivalDate,
      @Consumption.valueHelpDefinition: [{ entity: { name: 'zi_flight_city_180', element: 'Id' } }]
      @ObjectModel.text.element: [ 'CityFromDescription' ]
      CityFrom,
      @Search.defaultSearchElement: true
      CityFromDescription,
      @Consumption.valueHelpDefinition: [{ entity: { name: 'zi_flight_city_180', element: 'Id' } }]
      @ObjectModel.text.element: [ 'CityToDescription' ]
      CityTo,
      @Search.defaultSearchElement: true
      CityToDescription,
      Price,
      Waers,
      @Consumption.valueHelpDefinition: [{ entity: { name: 'zi_flight_status_180', element: 'Id' } }]
      @ObjectModel.text.element: [ 'StatusDescription' ]
      Status,
      StatusDescription,
      Icon,
      Criticality,
      /* Associations */
      _CityFrom,
      _CityTo,
      _Stats
}
