CLASS zcl_lab_05_flight_am DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS get_flight IMPORTING iv_company       TYPE /dmo/carrier_id
                                 iv_conecction    TYPE /dmo/connection_id
                       RETURNING VALUE(rv_status) TYPE abap_boolean.

    CONSTANTS cv_attr_01 TYPE string VALUE 'Pizza'.
    CONSTANTS cv_attr_02 TYPE string VALUE 'Hamburguesa'.
    CONSTANTS cv_attr_03 TYPE string VALUE 'Coca-Cola'.
    CONSTANTS cv_attr_04 TYPE string VALUE 'Pepsi'.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_05_flight_am IMPLEMENTATION.

  METHOD get_flight.
    SELECT SINGLE FROM /dmo/flight
    FIELDS *
    WHERE carrier_id = @iv_company AND connection_id = @iv_conecction
    INTO @DATA(ls_fligth).

    IF sy-subrc EQ 0.
      rv_status = abap_true.
    ELSE.
      rv_status = abap_false.
    ENDIF.
  ENDMETHOD.

ENDCLASS.
