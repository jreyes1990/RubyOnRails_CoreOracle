# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2024_08_30_051241) do

  create_table "action_text_rich_texts", comment: "Catálogo de texto enriquecido", force: :cascade do |t|
    t.string "record_type", null: false
    t.integer "record_id", precision: 38, null: false, comment: "Identificador del record"
    t.string "name", null: false, comment: "Nombre del texto enriquecido"
    t.text "body", comment: "Texto general del texto enriquecido"
    t.datetime "created_at", precision: 6, null: false, comment: "Fecha y hora al registrar datos"
    t.datetime "updated_at", precision: 6, null: false, comment: "Fecha y hora al actualizar datos"
    t.index ["record_type", "record_id", "name"], name: "udx_action_text_rich_texts", unique: true
  end

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.integer "record_id", precision: 38, null: false
    t.integer "blob_id", precision: 38, null: false
    t.datetime "created_at", precision: 6, null: false
    t.index ["blob_id"], name: "i_act_sto_att_blo_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "uidx_active_storage", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.integer "byte_size", limit: 19, precision: 19, null: false
    t.string "checksum", null: false
    t.datetime "created_at", precision: 6, null: false
    t.index ["key"], name: "i_active_storage_blobs_key", unique: true
  end

  create_table "areas", comment: "Catálogo de áreas por empresa", force: :cascade do |t|
    t.integer "empresa_id", precision: 38, null: false, comment: "Identificador de la empresa para la el área"
    t.integer "codigo_area", precision: 38, comment: "Identificador del código del área"
    t.string "nombre", limit: 200, comment: "Nombre del área"
    t.string "descripcion", comment: "Descripción general del área"
    t.string "codigo_hex", default: "#232323", comment: "Identificador del color codigo hexadecimal para el área"
    t.integer "user_created_id", precision: 38, null: false, comment: "Identificador de usuario al registrar en la aplicación web"
    t.integer "user_updated_id", precision: 38, comment: "Identificador de usuario al actualizar en la aplicación web"
    t.string "estado", limit: 10, default: "A", null: false, comment: "Estado del área: [A]: Activo  [I]: Inactivo"
    t.datetime "created_at", precision: 6, null: false, comment: "Fecha y hora al registrar datos"
    t.datetime "updated_at", precision: 6, null: false, comment: "Fecha y hora al actualizar datos"
    t.index ["empresa_id"], name: "index_areas_on_empresa_id"
  end

  create_table "atributos", comment: "Catálogo de atributos", force: :cascade do |t|
    t.string "nombre", limit: 200, null: false, comment: "Nombre del atributo"
    t.string "descripcion", comment: "Descripción general del atributo"
    t.integer "user_created_id", precision: 38, null: false, comment: "Identificador de usuario al registrar en la aplicación web"
    t.integer "user_updated_id", precision: 38, comment: "Identificador de usuario al actualizar en la aplicación web"
    t.string "estado", limit: 10, default: "A", null: false, comment: "Estado del atributo: [A]: Activo  [I]: Inactivo"
    t.datetime "created_at", precision: 6, null: false, comment: "Fecha y hora al registrar datos"
    t.datetime "updated_at", precision: 6, null: false, comment: "Fecha y hora al actualizar datos"
  end

  create_table "codigo_colores", comment: "Catálogo de codigo de colores", force: :cascade do |t|
    t.string "disenio", limit: 50
    t.string "nombre_color", limit: 100, comment: "Nombre del color"
    t.string "colores", limit: 25, comment: "Identificador del color"
    t.string "codigo_hex", limit: 25, comment: "Identificador del color, codigo hexadecimal"
    t.string "codigo_rgb", limit: 50, comment: "Identificador del color, codigo RGB"
    t.string "codigo_hls", limit: 50, comment: "Identificador del color, codigo HLS"
    t.integer "user_created_id", precision: 38, null: false, comment: "Identificador de usuario al registrar en la aplicación web"
    t.integer "user_updated_id", precision: 38, comment: "Identificador de usuario al actualizar en la aplicación web"
    t.string "estado", limit: 10, default: "A", null: false, comment: "Estado de codigo de colores: [A]: Activo  [I]: Inactivo"
    t.datetime "created_at", precision: 6, null: false, comment: "Fecha y hora al registrar datos"
    t.datetime "updated_at", precision: 6, null: false, comment: "Fecha y hora al actualizar datos"
  end

  create_table "componentes", comment: "Catálogo de componentes", force: :cascade do |t|
    t.string "nombre", limit: 200, null: false, comment: "Nombre del componente"
    t.string "descripcion", comment: "Descripción general del componente"
    t.integer "user_created_id", precision: 38, null: false, comment: "Identificador de usuario al registrar en la aplicación web"
    t.integer "user_updated_id", precision: 38, comment: "Identificador de usuario al actualizar en la aplicación web"
    t.string "estado", limit: 10, default: "A", null: false, comment: "Estado del componente: [A]: Activo  [I]: Inactivo"
    t.datetime "created_at", precision: 6, null: false, comment: "Fecha y hora al registrar datos"
    t.datetime "updated_at", precision: 6, null: false, comment: "Fecha y hora al actualizar datos"
  end

  create_table "credenciales_usuarios", force: :cascade do |t|
    t.integer "empresa_id", precision: 38
    t.string "nombre_empresa"
    t.integer "area_id", precision: 38
    t.string "nombre_area"
    t.integer "persona_id", precision: 38
    t.string "nombre_usuario"
    t.integer "user_id", precision: 38
    t.string "correo_electronico"
    t.string "password_temporal"
    t.string "actualizo_password"
    t.string "enviar_correo"
    t.string "enviar_telegram"
    t.string "estado_envio_correo"
    t.string "estado_envio_telegram"
    t.integer "user_created_id", precision: 38
    t.integer "user_updated_id", precision: 38
    t.string "estado", limit: 10
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "empresas", comment: "Catálogo de empresas", force: :cascade do |t|
    t.integer "codigo_empresa", precision: 38, null: false, comment: "Identificador codigo de la empresa"
    t.string "nombre", limit: 200, null: false, comment: "Nombre de la empresa"
    t.string "descripcion", comment: "Descripción general de la empresa"
    t.string "codigo_hex", default: "#232323", comment: "Identificador del color codigo hexadecimal para la empresa"
    t.integer "user_created_id", precision: 38, null: false, comment: "Identificador de usuario al registrar en la aplicación web"
    t.integer "user_updated_id", precision: 38, comment: "Identificador de usuario al actualizar en la aplicación web"
    t.string "estado", limit: 10, default: "A", null: false, comment: "Estado de la empresa: [A]: Activo  [I]: Inactivo"
    t.datetime "created_at", precision: 6, null: false, comment: "Fecha y hora al registrar datos"
    t.datetime "updated_at", precision: 6, null: false, comment: "Fecha y hora al actualizar datos"
  end

  create_table "font_awesomes", comment: "Catálogo de FontAwesomes", force: :cascade do |t|
    t.string "icono", limit: 50, comment: "Identificador del icono"
    t.string "prefijo_nombre", limit: 150
    t.string "termino"
    t.string "codigo_css", limit: 25, comment: "Identificador codigo CSS del icono"
    t.string "tipo_icono", limit: 50
    t.integer "user_created_id", precision: 38, null: false, comment: "Identificador de usuario al registrar en la aplicación web"
    t.integer "user_updated_id", precision: 38, comment: "Identificador de usuario al actualizar en la aplicación web"
    t.string "estado", limit: 10, default: "A", null: false, comment: "Estado del FontAwesome: [A]: Activo  [I]: Inactivo"
    t.datetime "created_at", precision: 6, null: false, comment: "Fecha y hora al registrar datos"
    t.datetime "updated_at", precision: 6, null: false, comment: "Fecha y hora al actualizar datos"
  end

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string "slug", null: false
    t.integer "sluggable_id", precision: 38, null: false
    t.string "sluggable_type", limit: 50
    t.string "scope"
    t.datetime "created_at", precision: 6
    t.index ["slug", "sluggable_type", "scope"], name: "i_fri_id_slu_slu_slu_typ_sco", unique: true
    t.index ["slug", "sluggable_type"], name: "i_fri_id_slu_slu_slu_typ"
    t.index ["sluggable_type", "sluggable_id"], name: "i_fri_id_slu_slu_typ_slu_id"
  end

  create_table "menu_roles", comment: "Catálogo de menú por rol", force: :cascade do |t|
    t.integer "menu_id", precision: 38, null: false, comment: "Identificador del menu para la opción"
    t.integer "opcion_id", precision: 38, null: false, comment: "Identificador de la opcion para el menú"
    t.integer "rol_id", precision: 38, null: false, comment: "Identificador del rol para el menú-rol"
    t.string "descripcion", comment: "Descripción general del menú por rol"
    t.integer "user_created_id", precision: 38, null: false, comment: "Identificador de usuario al registrar en la aplicación web"
    t.integer "user_updated_id", precision: 38, comment: "Identificador de usuario al actualizar en la aplicación web"
    t.string "estado", limit: 10, default: "A", null: false, comment: "Estado del menú-rol: [A]: Activo  [I]: Inactivo"
    t.datetime "created_at", precision: 6, null: false, comment: "Fecha y hora al registrar datos"
    t.datetime "updated_at", precision: 6, null: false, comment: "Fecha y hora al actualizar datos"
    t.index ["menu_id"], name: "index_menu_roles_on_menu_id"
    t.index ["opcion_id"], name: "index_menu_roles_on_opcion_id"
    t.index ["rol_id"], name: "index_menu_roles_on_rol_id"
  end

  create_table "menus", comment: "Catálogo de menús", force: :cascade do |t|
    t.string "nombre", limit: 200, null: false, comment: "Nombre del menú"
    t.string "descripcion", comment: "Descripción general del menú"
    t.string "icono", limit: 50, null: false, comment: "Identificador de icono para el menú"
    t.string "codigo_hex", default: "#232323", comment: "Identificador de color, codigo hexadecimal para el menú"
    t.string "menu_sidebar", comment: "Identificador del menú a utilizar en el sidebar"
    t.string "visible_sidebar", limit: 1, default: "t", comment: "El menú será visible en el sidebar?"
    t.integer "posicion", precision: 38, comment: "Orden del menú a utilizar en el sidebar"
    t.integer "user_created_id", precision: 38, null: false, comment: "Identificador de usuario al registrar en la aplicación web"
    t.integer "user_updated_id", precision: 38, comment: "Identificador de usuario al actualizar en la aplicación web"
    t.string "estado", limit: 10, default: "A", null: false, comment: "Estado del menú: [A]: Activo  [I]: Inactivo"
    t.datetime "created_at", precision: 6, null: false, comment: "Fecha y hora al registrar datos"
    t.datetime "updated_at", precision: 6, null: false, comment: "Fecha y hora al actualizar datos"
  end

  create_table "old_passwords", force: :cascade do |t|
    t.string "encrypted_password", null: false
    t.string "password_archivable_type"
    t.integer "password_archivable_id", precision: 38
    t.datetime "created_at", precision: 6
    t.index ["password_archivable_type", "password_archivable_id"], name: "idx_old_passwords"
  end

  create_table "opcion_cas", comment: "Catálogo de opcion-componente-atributos", force: :cascade do |t|
    t.integer "opcion_id", precision: 38, null: false, comment: "Identificador del menu para la opción_ca"
    t.integer "componente_id", precision: 38, null: false, comment: "Identificador del componente para la opción_ca"
    t.integer "atributo_id", precision: 38, null: false, comment: "Identificador del atributo para la opción_ca"
    t.string "descripcion", comment: "Descripción general de la opción_ca"
    t.integer "user_created_id", precision: 38, null: false, comment: "Identificador de usuario al registrar en la aplicación web"
    t.integer "user_updated_id", precision: 38, comment: "Identificador de usuario al actualizar en la aplicación web"
    t.string "estado", limit: 10, default: "A", null: false, comment: "Estado de la opción-componente-atributo: [A]: Activo  [I]: Inactivo"
    t.datetime "created_at", precision: 6, null: false, comment: "Fecha y hora al registrar datos"
    t.datetime "updated_at", precision: 6, null: false, comment: "Fecha y hora al actualizar datos"
    t.index ["atributo_id"], name: "i_opcion_cas_atributo_id"
    t.index ["componente_id"], name: "i_opcion_cas_componente_id"
    t.index ["opcion_id"], name: "index_opcion_cas_on_opcion_id"
  end

  create_table "opciones", comment: "Catálogo de opciones", force: :cascade do |t|
    t.integer "menu_id", precision: 38, null: false, comment: "Identificador del menu para la opción"
    t.string "nombre", limit: 200, null: false, comment: "Nombre de la opción"
    t.string "descripcion", comment: "Descripción general de la opción"
    t.string "icono", limit: 50, comment: "Icono que identificará la opción"
    t.string "path", null: false, comment: "Identificador de ruta de navegación"
    t.string "controlador", limit: 300, null: false, comment: "Identificador de controlador de navegación"
    t.string "codigo_hex", default: "#232323", comment: "Color Hexadecimal que identificará la opción"
    t.string "componente_sidebar", comment: "Identificador el componente a utilizar en el sidebar"
    t.string "visible_sidebar", limit: 1, default: "t", comment: "El componente será visible en el sidebar?"
    t.integer "posicion", precision: 38, comment: "Orden del componente a utilizar en el sidebar"
    t.integer "sub_opcion_id", precision: 38, default: 1, comment: "Identificador de la subOpción"
    t.string "nombre_sub_opcion", default: "OPCIONES:", comment: "Nombre de la subOpción"
    t.integer "user_created_id", precision: 38, null: false, comment: "Identificador de usuario al registrar en la aplicación web"
    t.integer "user_updated_id", precision: 38, comment: "Identificador de usuario al actualizar en la aplicación web"
    t.string "estado", limit: 10, default: "A", null: false, comment: "Estado de la opción: [A]: Activo  [I]: Inactivo"
    t.string "aplica_carga_masiva", limit: 10
    t.datetime "created_at", precision: 6, null: false, comment: "Fecha y hora al registrar datos"
    t.datetime "updated_at", precision: 6, null: false, comment: "Fecha y hora al actualizar datos"
    t.index ["menu_id"], name: "index_opciones_on_menu_id"
  end

  create_table "parametros", comment: "Catálogo de parámetros", force: :cascade do |t|
    t.integer "empresa_id", precision: 38, null: false, comment: "Identificador de la empresa para el parámetro"
    t.integer "area_id", precision: 38, null: false, comment: "Identificador del área para el parámetro"
    t.integer "user_id", precision: 38, null: false, comment: "Identificador del usuario para el parámetro"
    t.string "nombre_area"
    t.string "nombre_empresa"
    t.string "ruta_predeterminada"
    t.string "view_default"
    t.datetime "created_at", precision: 6, null: false, comment: "Fecha y hora al registrar datos"
    t.datetime "updated_at", precision: 6, null: false, comment: "Fecha y hora al actualizar datos"
    t.index ["area_id"], name: "index_parametros_on_area_id"
    t.index ["empresa_id"], name: "index_parametros_on_empresa_id"
    t.index ["user_id"], name: "index_parametros_on_user_id"
  end

  create_table "persona_empresa_formularios", comment: "Módulo de persona empresa formularios", force: :cascade do |t|
    t.integer "personas_area_id", precision: 38, null: false, comment: "Identificador de la persona por área"
    t.integer "opcion_ca_id", precision: 38, null: false, comment: "Identificador de la opcion-componente-atributo"
    t.string "descripcion", comment: "Descripción general de la persona empresa formulario"
    t.integer "user_created_id", precision: 38, null: false, comment: "Identificador de usuario al registrar en la aplicación web"
    t.integer "user_updated_id", precision: 38, comment: "Identificador de usuario al actualizar en la aplicación web"
    t.string "estado", limit: 10, default: "A", null: false, comment: "Estado de la persona empresa formulario: [A]: Activo  [I]: Inactivo"
    t.datetime "created_at", precision: 6, null: false, comment: "Fecha y hora al registrar datos"
    t.datetime "updated_at", precision: 6, null: false, comment: "Fecha y hora al actualizar datos"
    t.index ["opcion_ca_id"], name: "i_per_emp_for_opc_ca_id"
    t.index ["personas_area_id"], name: "i_per_emp_for_per_are_id"
  end

  create_table "personas", comment: "Catálogo de personas", force: :cascade do |t|
    t.integer "user_id", precision: 38, null: false, comment: "Identificador del usuario"
    t.string "nombre", limit: 200, null: false, comment: "Nombre de la persona"
    t.string "apellido", limit: 200, null: false, comment: "Apellido de la persona"
    t.text "foto", comment: "Foto de la persona"
    t.integer "telefono", precision: 38
    t.integer "chat_id_telegram", precision: 38
    t.string "direccion"
    t.string "token", limit: 1000
    t.integer "user_created_id", precision: 38, null: false, comment: "Identificador de usuario al registrar en la aplicación web"
    t.integer "user_updated_id", precision: 38, comment: "Identificador de usuario al actualizar en la aplicación web"
    t.string "estado", limit: 10, default: "A", null: false, comment: "Estado de la persona: [A]: Activo  [I]: Inactivo"
    t.datetime "created_at", precision: 6, null: false, comment: "Fecha y hora al registrar datos"
    t.datetime "updated_at", precision: 6, null: false, comment: "Fecha y hora al actualizar datos"
    t.index ["user_id"], name: "index_personas_on_user_id"
  end

  create_table "personas_areas", comment: "Catálogo de personas por área", force: :cascade do |t|
    t.integer "persona_id", precision: 38, null: false, comment: "Identificador de la persona para la persona por área"
    t.integer "area_id", precision: 38, null: false, comment: "Identificador del área para la persona por área"
    t.integer "rol_id", precision: 38, comment: "Identificador del rol para la persona por área"
    t.string "descripcion", comment: "Descripción general de la persona por área"
    t.integer "user_created_id", precision: 38, null: false, comment: "Identificador de usuario al registrar en la aplicación web"
    t.integer "user_updated_id", precision: 38, comment: "Identificador de usuario al actualizar en la aplicación web"
    t.string "estado", limit: 10, default: "A", null: false, comment: "Estado de la persona por área: [A]: Activo  [I]: Inactivo"
    t.datetime "created_at", precision: 6, null: false, comment: "Fecha y hora al registrar datos"
    t.datetime "updated_at", precision: 6, null: false, comment: "Fecha y hora al actualizar datos"
    t.index ["area_id"], name: "i_personas_areas_area_id"
    t.index ["persona_id"], name: "i_personas_areas_persona_id"
    t.index ["rol_id"], name: "index_personas_areas_on_rol_id"
  end

  create_table "roles", comment: "Catálogo de roles", force: :cascade do |t|
    t.string "nombre", limit: 200, null: false, comment: "Nombre del rol"
    t.string "descripcion", comment: "Descripción general del rol"
    t.string "codigo_hex", default: "#232323", comment: "Color Hexadecimal que identificará el rol"
    t.integer "user_created_id", precision: 38, null: false, comment: "Identificador de usuario al registrar en la aplicación web"
    t.integer "user_updated_id", precision: 38, comment: "Identificador de usuario al actualizar en la aplicación web"
    t.string "estado", limit: 10, default: "A", null: false, comment: "Estado del rol: [A]: Activo  [I]: Inactivo"
    t.string "slug"
    t.datetime "created_at", precision: 6, null: false, comment: "Fecha y hora al registrar datos"
    t.datetime "updated_at", precision: 6, null: false, comment: "Fecha y hora al actualizar datos"
    t.index ["slug"], name: "index_roles_on_slug"
  end

  create_table "sessions", force: :cascade do |t|
    t.string "session_id", null: false
    t.text "data"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["session_id"], name: "index_sessions_on_session_id", unique: true
    t.index ["updated_at"], name: "index_sessions_on_updated_at"
  end

  create_table "users", comment: "Catálogo de usuarios", force: :cascade do |t|
    t.string "email", default: "", null: false, comment: "Corre electronico del usuario"
    t.string "encrypted_password", default: "", null: false, comment: "Password-Contraseña encriptada"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at", precision: 6
    t.datetime "remember_created_at", precision: 6
    t.integer "user_created_id", precision: 38, comment: "Identificador del usuario al registrar en la aplicación web"
    t.integer "user_updated_id", precision: 38, comment: "Identificador del usuario al actualizar en la aplicación web"
    t.string "estado", default: "A", comment: "Estado del user: [A]: Activo;  [I]: Inactivo"
    t.datetime "created_at", precision: 6, null: false, comment: "Fecha y hora al registrar datos"
    t.datetime "updated_at", precision: 6, null: false, comment: "Fecha y hora al actualizar datos"
    t.integer "sign_in_count", precision: 38, default: 0, null: false
    t.datetime "current_sign_in_at", precision: 6
    t.datetime "last_sign_in_at", precision: 6
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "password_changed", limit: 1, default: "f"
    t.datetime "password_changed_at", precision: 6
    t.string "encrypted_otp_secret"
    t.string "encrypted_otp_secret_iv"
    t.string "encrypted_otp_secret_salt"
    t.integer "consumed_timestep", precision: 38
    t.string "otp_required_for_login", limit: 1
    t.index ["email"], name: "uidx_email", unique: true
    t.index ["reset_password_token"], name: "uidx_resetpasstoken", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "areas", "empresas", name: "fk_area_empresa"
  add_foreign_key "menu_roles", "menus", name: "fk_menurol_menu"
  add_foreign_key "menu_roles", "opciones", name: "fk_menurol_opcion"
  add_foreign_key "menu_roles", "roles", name: "fk_menurol_rol"
  add_foreign_key "opcion_cas", "atributos", name: "fk_opcionca_atributo"
  add_foreign_key "opcion_cas", "componentes", name: "fk_opcionca_componente"
  add_foreign_key "opcion_cas", "opciones", name: "fk_opcionca_opcion"
  add_foreign_key "opciones", "menus", name: "fk_opcion_menu"
  add_foreign_key "parametros", "areas", name: "fk_parametro_area"
  add_foreign_key "parametros", "empresas", name: "fk_parametro_empresa"
  add_foreign_key "parametros", "users", name: "fk_parametro_user"
  add_foreign_key "persona_empresa_formularios", "opcion_cas", name: "fk_peform_opcionca"
  add_foreign_key "persona_empresa_formularios", "personas_areas", name: "fk_peform_personarea"
  add_foreign_key "personas", "users", name: "fk_persona_user"
  add_foreign_key "personas_areas", "areas", name: "fk_personarea_area"
  add_foreign_key "personas_areas", "personas", name: "fk_personarea_persona"
  add_foreign_key "personas_areas", "roles", name: "fk_personarea_rol"

  create_view "areas_views", sql_definition: <<-SQL
      select 
  areas."ID",areas."EMPRESA_ID",areas."CODIGO_AREA",areas."NOMBRE",areas."DESCRIPCION",areas."CODIGO_HEX",areas."USER_CREATED_ID",areas."USER_UPDATED_ID",areas."ESTADO",areas."CREATED_AT",areas."UPDATED_AT", 
  empresas.codigo_empresa, 
  empresas.nombre as nombre_empresa, 
  (empresas.codigo_empresa||': '||empresas.nombre) as codigo_nombre_empresa, 
  empresas.codigo_hex as codigo_hex_empresa
  from areas
  inner join empresas on(areas.empresa_id=empresas.id)
  SQL
  create_view "opciones_views", sql_definition: <<-SQL
      select opciones."ID",opciones."MENU_ID",opciones."NOMBRE",opciones."DESCRIPCION",opciones."ICONO",opciones."PATH",opciones."CONTROLADOR",opciones."CODIGO_HEX",opciones."COMPONENTE_SIDEBAR",opciones."VISIBLE_SIDEBAR",opciones."POSICION",opciones."SUB_OPCION_ID",opciones."NOMBRE_SUB_OPCION",opciones."USER_CREATED_ID",opciones."USER_UPDATED_ID",opciones."ESTADO",opciones."APLICA_CARGA_MASIVA",opciones."CREATED_AT",opciones."UPDATED_AT",
  menus.nombre as nombre_menu, 
  menus.icono as icono_menu, 
  menus.codigo_hex as codigo_hex_menu
  from opciones
  inner join menus on(opciones.menu_id=menus.id)
  SQL
  create_view "menu_roles_views", sql_definition: <<-SQL
      select menu_roles."ID",menu_roles."MENU_ID",menu_roles."OPCION_ID",menu_roles."ROL_ID",menu_roles."DESCRIPCION",menu_roles."USER_CREATED_ID",menu_roles."USER_UPDATED_ID",menu_roles."ESTADO",menu_roles."CREATED_AT",menu_roles."UPDATED_AT",
  opciones.nombre as nombre_opcion, 
  opciones.icono as icono_opcion, 
  opciones.path as path_opcion, 
  opciones.controlador as controlador_opcion, 
  opciones.codigo_hex as codigo_hex_opcion,
  roles.nombre as nombre_rol, 
  roles.codigo_hex as codigo_hex_rol,
  menus.id as menu_codigo, 
  menus.nombre as nombre_menu, 
  menus.icono as icono_menu, 
  menus.codigo_hex as codigo_hex_menu
  from menu_roles
  inner join opciones on(menu_roles.opcion_id=opciones.id)
  inner join roles on(menu_roles.rol_id=roles.id)
  inner join menus on(opciones.menu_id=menus.id)
  SQL
  create_view "opcion_cas_views", sql_definition: <<-SQL
      select opcion_cas."ID",opcion_cas."OPCION_ID",opcion_cas."COMPONENTE_ID",opcion_cas."ATRIBUTO_ID",opcion_cas."DESCRIPCION",opcion_cas."USER_CREATED_ID",opcion_cas."USER_UPDATED_ID",opcion_cas."ESTADO",opcion_cas."CREATED_AT",opcion_cas."UPDATED_AT",
  opciones.menu_id, 
  menus.nombre as nombre_menu, 
  menus.icono as icono_menu, 
  menus.codigo_hex as codigo_hex_menu,
  opciones.nombre as nombre_opcion, 
  opciones.icono as icono_opcion, 
  opciones.codigo_hex as codigo_hex_opcion,
  opciones.path AS path_opcion,
  opciones.controlador AS controlador_opcion,
  componentes.nombre as nombre_componente,
  atributos.nombre as nombre_atributo
  from opcion_cas 
  inner join opciones on(opcion_cas.opcion_id=opciones.id)
  inner join componentes on(opcion_cas.componente_id=componentes.id)
  inner join atributos on(opcion_cas.atributo_id=atributos.id)
  inner join menus on(opciones.menu_id=menus.id)
  SQL
  create_view "personas_areas_views", sql_definition: <<-SQL
      select personas_areas."ID",personas_areas."PERSONA_ID",personas_areas."AREA_ID",personas_areas."ROL_ID",personas_areas."DESCRIPCION",personas_areas."USER_CREATED_ID",personas_areas."USER_UPDATED_ID",personas_areas."ESTADO",personas_areas."CREATED_AT",personas_areas."UPDATED_AT",
  (personas.nombre||' '||personas.apellido) as nombre_usuario, 
  personas.telefono as telefono_usuario, 
  personas.user_id, 
  users.email as email_usuario,
  areas.codigo_area, 
  areas.nombre as nombre_area, 
  areas.codigo_hex as codigo_hex_area, 
  areas.empresa_id, 
  empresas.codigo_empresa, 
  empresas.nombre as nombre_empresa,
  roles.nombre as nombre_rol, 
  roles.codigo_hex as codigo_hex_rol
  from personas_areas 
  inner join personas on(personas_areas.persona_id=personas.id)
  inner join users on(personas.user_id=users.id)
  inner join areas on(personas_areas.area_id=areas.id)
  inner join empresas on(areas.empresa_id=empresas.id)
  left join roles on(personas_areas.rol_id=roles.id)
  SQL
  create_view "persona_empresa_form_views", sql_definition: <<-SQL
      select 
  persona_empresa_formularios.id,
  persona_empresa_formularios.personas_area_id,
  persona_empresa_formularios.opcion_ca_id,
  persona_empresa_formularios.descripcion,
  persona_empresa_formularios.estado,
  personas_areas_views.empresa_id,
  personas_areas_views.codigo_empresa,
  personas_areas_views.nombre_empresa,
  personas_areas_views.area_id,
  personas_areas_views.codigo_area,
  personas_areas_views.codigo_hex_area,
  personas_areas_views.nombre_area,
  personas_areas_views.user_id,
  personas_areas_views.persona_id,
  personas_areas_views.nombre_usuario,
  personas_areas_views.email_usuario,
  personas_areas_views.rol_id,
  personas_areas_views.nombre_rol,
  personas_areas_views.codigo_hex_rol,
  opcion_cas_views.menu_id,
  opcion_cas_views.nombre_menu,
  opcion_cas_views.codigo_hex_menu,
  opcion_cas_views.path_opcion,
  opcion_cas_views.controlador_opcion,
  opcion_cas_views.opcion_id,
  opcion_cas_views.nombre_opcion,
  opcion_cas_views.codigo_hex_opcion,
  opcion_cas_views.componente_id,
  opcion_cas_views.nombre_componente,
  opcion_cas_views.atributo_id,
  opcion_cas_views.nombre_atributo
  from persona_empresa_formularios
  inner join personas_areas_views on(persona_empresa_formularios.personas_area_id=personas_areas_views.id)
  inner join opcion_cas_views on(persona_empresa_formularios.opcion_ca_id=opcion_cas_views.id)
  SQL
end
