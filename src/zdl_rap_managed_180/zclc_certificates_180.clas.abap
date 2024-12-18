CLASS zclc_certificates_180 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zclc_certificates_180 IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

    TYPES: tt_certif TYPE TABLE OF zrap_certif_180 WITH DEFAULT KEY.

    DELETE FROM zrap_certif_180.

    DATA(lt_certif) = VALUE tt_certif(
    ( cert_uuid = '1' matnr = '1' )
    ( cert_uuid = '2' matnr = '2' )
    ( cert_uuid = '3' matnr = '3')
    ).

    MODIFY zrap_certif_180 FROM TABLE @lt_certif.
    out->write( 'Certiicados inseridos com sucesso' ).

  ENDMETHOD.

ENDCLASS.
