INTERFACE y_if_code_pal_database_access PUBLIC.

  TYPES tty_source_code TYPE TABLE OF abaptxt255 WITH EMPTY KEY.
  TYPES tty_tadir TYPE TABLE OF tadir WITH DEFAULT KEY.
  TYPES tty_trdir TYPE TABLE OF trdir WITH DEFAULT KEY.
  TYPES tty_tojtb TYPE TABLE OF tojtb WITH DEFAULT KEY.
  TYPES tty_t777d TYPE TABLE OF t777d WITH DEFAULT KEY.
  TYPES tty_sbd_ga TYPE TABLE OF /iwbep/i_sbd_ga WITH DEFAULT KEY.
  TYPES tty_t777ditclass TYPE TABLE OF t777ditclass WITH DEFAULT KEY.
  TYPES tty_seometarel TYPE TABLE OF seometarel WITH DEFAULT KEY.
  TYPES tty_seoclassdf TYPE TABLE OF seoclassdf WITH DEFAULT KEY.
  TYPES tty_vrsd TYPE TABLE OF vrsd WITH DEFAULT KEY.

  DATA repository_access TYPE REF TO if_sca_repository_access READ-ONLY.

  METHODS get_tadir IMPORTING object_type   TYPE tadir-object
                              object_name   TYPE tadir-obj_name
                    RETURNING VALUE(result) TYPE tty_tadir.

  METHODS get_table_object_repository IMPORTING object_name   TYPE tojtb-progname
                                      RETURNING VALUE(result) TYPE tty_tojtb.

  METHODS get_source_code IMPORTING object_type   TYPE tadir-object
                                    object_name   TYPE tadir-obj_name
                          RETURNING VALUE(result) TYPE tty_source_code.

  METHODS get_trdir IMPORTING object_name   TYPE trdir-name
                    RETURNING VALUE(result) TYPE tty_trdir.

  METHODS get_infotype IMPORTING object_name   TYPE t777d-repid
                       RETURNING VALUE(result) TYPE tty_t777d.

  METHODS get_service_builder_artifact IMPORTING object_type   TYPE /iwbep/i_sbd_ga-trobj_type
                                                 object_name   TYPE /iwbep/i_sbd_ga-trobj_name
                                       RETURNING VALUE(result) TYPE tty_sbd_ga.

  METHODS get_hrbas_infotype IMPORTING object_name   TYPE t777ditclass-idclass
                             RETURNING VALUE(result) TYPE tty_t777ditclass.

  METHODS get_class_metadata IMPORTING object_name   TYPE seometarel-clsname
                             RETURNING VALUE(result) TYPE tty_seometarel.

  METHODS get_class_definition IMPORTING object_name   TYPE seoclassdf-clsname
                               RETURNING VALUE(result) TYPE tty_seoclassdf.

  METHODS get_version_management IMPORTING object_type   TYPE vrsd-objtype
                                           object_name   TYPE vrsd-objname
                                 RETURNING VALUE(result) TYPE tty_vrsd.

ENDINTERFACE.