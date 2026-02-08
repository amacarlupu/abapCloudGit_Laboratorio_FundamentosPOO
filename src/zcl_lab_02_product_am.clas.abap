CLASS zcl_lab_02_product_am DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS set_product IMPORTING iv_product TYPE matnr.
    METHODS set_creationdate IMPORTING iv_creationdate TYPE zdate.

  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA: product       TYPE matnr,
          creation_date TYPE zdate.

ENDCLASS.



CLASS zcl_lab_02_product_am IMPLEMENTATION.
  METHOD set_creationdate.
    creation_date = iv_creationdate.
  ENDMETHOD.

  METHOD set_product.
    product = iv_product.
  ENDMETHOD.

ENDCLASS.
