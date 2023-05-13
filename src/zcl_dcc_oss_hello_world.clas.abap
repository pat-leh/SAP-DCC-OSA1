CLASS zcl_dcc_oss_hello_world DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS constructor
      IMPORTING
        !user_name_to_call TYPE zusername DEFAULT 'World' .
    METHODS get_hello_message
      RETURNING
        VALUE(hello_message) TYPE string .
  PROTECTED SECTION.
  PRIVATE SECTION.

    DATA user_name_to_call TYPE zusername .
ENDCLASS.



CLASS ZCL_DCC_OSS_HELLO_WORLD IMPLEMENTATION.


  METHOD constructor.
    me->user_name_to_call = user_name_to_call.
  ENDMETHOD.


  METHOD get_hello_message.
    hello_message = |Hello { me->user_name_to_call }|.
  ENDMETHOD.
ENDCLASS.
