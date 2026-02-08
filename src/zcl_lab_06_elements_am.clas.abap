CLASS zcl_lab_06_elements_am DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    TYPES: BEGIN OF ty_elem_objects,
             class     TYPE string,
             instance  TYPE string,
             reference TYPE string,
           END OF ty_elem_objects.

    METHODS set_object IMPORTING iv_ms_object TYPE ty_elem_objects
                       EXPORTING ev_ms_object TYPE ty_elem_objects.

  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA ms_object TYPE ty_elem_objects.
ENDCLASS.



CLASS zcl_lab_06_elements_am IMPLEMENTATION.
  METHOD set_object.
    ms_object = iv_ms_object.
    ev_ms_object = ms_object.
  ENDMETHOD.

ENDCLASS.
