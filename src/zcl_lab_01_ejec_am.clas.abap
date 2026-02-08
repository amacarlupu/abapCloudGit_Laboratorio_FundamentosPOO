CLASS zcl_lab_01_ejec_am DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES: if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_01_ejec_am IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    DATA(lo_person) = NEW zcl_lab_04_person_am(  ).
    lo_person->set_age( iv_age = 30 ).

    lo_person->get_age(
      IMPORTING
        ev_age = DATA(lv_age)
    ).

    out->write( |La edad es: { lv_age }| ).

    DATA(lo_fligths) = NEW zcl_lab_05_flight_am(  ).

    lo_fligths->get_flight(
      EXPORTING
        iv_company    = 'SQ'
        iv_conecction = '0002'
      RECEIVING
        rv_status     = DATA(lv_status)
    ).

    out->write( |El estatus del vuelo es { lv_status }| ).

    DATA(lv_constan1) = zcl_lab_05_flight_am=>cv_attr_01.
    DATA(lv_constan2) = zcl_lab_05_flight_am=>cv_attr_02.
    DATA(lv_constan3) = zcl_lab_05_flight_am=>cv_attr_03.
    DATA(lv_constan4) = zcl_lab_05_flight_am=>cv_attr_04.

    out->write( |Constantes: { lv_constan1 } - { lv_constan2 } - { lv_constan3 } - { lv_constan4 }| ).

    DATA(lo_student) = NEW zcl_lab_07_student_am(  ).

    lo_student->set_birth_date(
      EXPORTING
        iv_birth_date = '20260207'
      IMPORTING
        ev_birth_date = DATA(lv_birth_date)
    ).

    out->write( |Birth Date: { lv_birth_date }| ).

    DATA ls_elem_object TYPE zcl_lab_06_elements_am=>ty_elem_objects.
    DATA(lo_elements) = NEW zcl_lab_06_elements_am(  ).

    ls_elem_object-class = 'ZCL_LAB_06_ELEMENTS_AM'.
    ls_elem_object-instance = 'lo_elements'.
    ls_elem_object-reference = 'ty_elem_objects'.

    lo_elements->set_object(
      EXPORTING
        iv_ms_object = ls_elem_object
      IMPORTING
        ev_ms_object = DATA(ls_ms_object)
    ).

    out->write( |Estructura MS_OBJECT:| ).
    out->write( |CLASS= { ls_ms_object-class }| ).
    out->write( |INSTANCE= { ls_ms_object-instance }| ).
    out->write( |REFERENCE= { ls_ms_object-reference }| ).

    zcl_lab_08_work_record_am=>open_new_record(
      iv_date       = '20260208'
      iv_first_name = 'Anderson'
      iv_last_name  = 'Macarlupu'
*      iv_surname    =
    ).

    data(lo_account) = new zcl_lab_09_account_am(  ).
    lo_account->set_iban( 'Cuenta personal' ).
    out->write( lo_account->get_iban(  ) ).

  ENDMETHOD.

ENDCLASS.
