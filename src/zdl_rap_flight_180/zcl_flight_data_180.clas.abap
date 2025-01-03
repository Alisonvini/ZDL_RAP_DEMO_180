CLASS zcl_flight_data_180 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS populate_flights.
    METHODS populate_cities.
    METHODS populate_status.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_flight_data_180 IMPLEMENTATION.

  METHOD populate_flights.
    DATA: lt_flights TYPE TABLE OF zdl_flight_180,
          ls_flight  TYPE zdl_flight_180.

    lt_flights = VALUE #(
       ( client = sy-mandt id = 1 departure_date = '20240101' arrival_date = '20240102'
         city_from = 1 city_to = 2 price = '500.00' waers = 'USD' status = 1 )
       ( client = sy-mandt id = 2 departure_date = '20240103' arrival_date = '20240104'
         city_from = 2 city_to = 3 price = '300.00' waers = 'EUR' status = 2 )
       ( client = sy-mandt id = 3 departure_date = '20240105' arrival_date = '20240106'
         city_from = 3 city_to = 1 price = '400.00' waers = 'BRL' status = 3 )
       ( client = sy-mandt id = 4 departure_date = '20240107' arrival_date = '20240108'
         city_from = 1 city_to = 4 price = '600.00' waers = 'USD' status = 1 )
       ( client = sy-mandt id = 5 departure_date = '20240109' arrival_date = '20240110'
         city_from = 4 city_to = 2 price = '700.00' waers = 'EUR' status = 2 )
       ( client = sy-mandt id = 6 departure_date = '20240111' arrival_date = '20240112'
         city_from = 2 city_to = 5 price = '800.00' waers = 'BRL' status = 3 )
       ( client = sy-mandt id = 7 departure_date = '20240113' arrival_date = '20240114'
         city_from = 5 city_to = 3 price = '900.00' waers = 'USD' status = 1 )
       ( client = sy-mandt id = 8 departure_date = '20240115' arrival_date = '20240116'
         city_from = 3 city_to = 6 price = '1000.00' waers = 'EUR' status = 2 )
       ( client = sy-mandt id = 9 departure_date = '20240117' arrival_date = '20240118'
         city_from = 6 city_to = 1 price = '1100.00' waers = 'BRL' status = 3 )
       ( client = sy-mandt id = 10 departure_date = '20240119' arrival_date = '20240120'
         city_from = 1 city_to = 5 price = '1200.00' waers = 'USD' status = 1 )
     ).

    MODIFY zdl_flight_180 FROM TABLE @lt_flights.
    COMMIT WORK.
  ENDMETHOD.

  METHOD populate_cities.
    DATA: lt_cities TYPE TABLE OF zdl_flight_ct180,
          ls_city   TYPE zdl_flight_ct180.

    lt_cities = VALUE #(
      ( client = sy-mandt id = 1 description = 'New York' )
      ( client = sy-mandt id = 2 description = 'London' )
      ( client = sy-mandt id = 3 description = 'Paris' )
      ( client = sy-mandt id = 4 description = 'Berlin' )
      ( client = sy-mandt id = 5 description = 'Tokyo' )
      ( client = sy-mandt id = 6 description = 'Sydney' )
      ( client = sy-mandt id = 7 description = 'São Paulo' )
      ( client = sy-mandt id = 8 description = 'Mumbai' )
      ( client = sy-mandt id = 9 description = 'Dubai' )
      ( client = sy-mandt id = 10 description = 'Shanghai' )
    ).



    MODIFY zdl_flight_ct180 FROM TABLE @lt_cities.
    COMMIT WORK.
  ENDMETHOD.

  METHOD populate_status.
    DATA: lt_status TYPE TABLE OF zdl_flight_st180,
          ls_status TYPE zdl_flight_st180.

    lt_status = VALUE #(
     ( client = sy-mandt id = 1 description = 'Scheduled' )
     ( client = sy-mandt id = 2 description = 'Completed' )
     ( client = sy-mandt id = 3 description = 'Cancelled' )
     ( client = sy-mandt id = 4 description = 'Delayed' )
     ( client = sy-mandt id = 5 description = 'Boarding' )
     ( client = sy-mandt id = 6 description = 'In Flight' )
     ( client = sy-mandt id = 7 description = 'Landed' )
     ( client = sy-mandt id = 8 description = 'Rescheduled' )
     ( client = sy-mandt id = 9 description = 'Diverted' )
     ( client = sy-mandt id = 10 description = 'No Show' )
   ).


    MODIFY zdl_flight_st180 FROM TABLE @lt_status.
    COMMIT WORK.
  ENDMETHOD.

  METHOD if_oo_adt_classrun~main.

    DATA(lo_flight_data) = NEW zcl_flight_data( ).


    CALL METHOD populate_cities.
    CALL METHOD populate_status.
    CALL METHOD populate_flights.

  ENDMETHOD.

ENDCLASS.
