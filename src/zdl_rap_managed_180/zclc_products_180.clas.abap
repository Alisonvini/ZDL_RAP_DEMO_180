CLASS zclc_products_180 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zclc_products_180 IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

    TYPES: tt_products TYPE TABLE OF zrap_product_180 WITH DEFAULT KEY.

    DELETE FROM zrap_product_180.

    DATA(lt_products) = VALUE tt_products(
    ( matnr = '000000000000000001' description = 'Celular'    language = 'P')
    ( matnr = '000000000000000002' description = 'Televisão'  language = 'P')
    ( matnr = '000000000000000003' description = 'Computador' language = 'P')
    ( matnr = '000000000000000001' description = 'Phone'      language = 'E')
    ( matnr = '000000000000000002' description = 'Television' language = 'E')
    ( matnr = '000000000000000003' description = 'Computer'   language = 'E')
    ).

    MODIFY zrap_product_180 FROM TABLE @lt_products.
    out->write( 'Produtos inseridos com sucesso' ).

  ENDMETHOD.

ENDCLASS.
