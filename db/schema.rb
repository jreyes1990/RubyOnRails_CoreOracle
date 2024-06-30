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

ActiveRecord::Schema.define(version: 2024_03_03_040450) do

  create_table "action_text_rich_texts", force: :cascade do |t|
    t.string "name", null: false
    t.text "body"
    t.string "record_type", null: false
    t.integer "record_id", precision: 38, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
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

  create_table "areas", force: :cascade do |t|
    t.integer "codigo_area", precision: 38
    t.string "nombre", limit: 200
    t.string "codigo_hex"
    t.string "descripcion"
    t.integer "user_created_id", precision: 38
    t.integer "user_updated_id", precision: 38
    t.string "estado", limit: 10
    t.integer "empresa_id", precision: 38, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["empresa_id"], name: "index_areas_on_empresa_id"
  end

  create_table "atributos", force: :cascade do |t|
    t.string "nombre", limit: 200
    t.string "descripcion"
    t.integer "user_created_id", precision: 38
    t.integer "user_updated_id", precision: 38
    t.string "estado", limit: 10
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "codigo_colores", force: :cascade do |t|
    t.string "disenio", limit: 50
    t.string "nombre_color", limit: 100
    t.string "colores", limit: 25
    t.string "codigo_hex", limit: 25
    t.string "codigo_rgb", limit: 50
    t.string "codigo_hls", limit: 50
    t.integer "user_created_id", precision: 38
    t.integer "user_updated_id", precision: 38
    t.string "estado", limit: 10
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "componentes", force: :cascade do |t|
    t.string "nombre", limit: 200
    t.string "descripcion"
    t.integer "user_created_id", precision: 38
    t.integer "user_updated_id", precision: 38
    t.string "estado", limit: 10
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
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

  create_table "empresas", force: :cascade do |t|
    t.integer "codigo_empresa", precision: 38
    t.string "nombre", limit: 200
    t.string "codigo_hex"
    t.string "descripcion"
    t.integer "user_created_id", precision: 38
    t.integer "user_updated_id", precision: 38
    t.string "estado", limit: 10
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "font_awesomes", force: :cascade do |t|
    t.string "icono", limit: 50
    t.string "prefijo_nombre", limit: 150
    t.string "termino"
    t.string "codigo_css", limit: 25
    t.string "tipo_icono", limit: 50
    t.integer "user_created_id", precision: 38
    t.integer "user_updated_id", precision: 38
    t.string "estado", limit: 10
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
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

  create_table "menu_roles", force: :cascade do |t|
    t.integer "menu_id", precision: 38
    t.string "descripcion"
    t.integer "user_created_id", precision: 38
    t.integer "user_updated_id", precision: 38
    t.string "estado", limit: 10
    t.integer "opcion_id", precision: 38, null: false
    t.integer "rol_id", precision: 38, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["opcion_id"], name: "index_menu_roles_on_opcion_id"
    t.index ["rol_id"], name: "index_menu_roles_on_rol_id"
  end

  create_table "menus", force: :cascade do |t|
    t.string "nombre", limit: 200
    t.string "descripcion"
    t.string "icono", limit: 50
    t.string "codigo_hex"
    t.integer "user_created_id", precision: 38
    t.integer "user_updated_id", precision: 38
    t.string "estado", limit: 10
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "old_passwords", force: :cascade do |t|
    t.string "encrypted_password", null: false
    t.string "password_archivable_type"
    t.integer "password_archivable_id", precision: 38
    t.datetime "created_at", precision: 6
    t.index ["password_archivable_type", "password_archivable_id"], name: "idx_old_passwords"
  end

  create_table "opcion_cas", force: :cascade do |t|
    t.string "descripcion"
    t.integer "user_created_id", precision: 38
    t.integer "user_updated_id", precision: 38
    t.string "estado", limit: 10
    t.integer "opcion_id", precision: 38, null: false
    t.integer "componente_id", precision: 38, null: false
    t.integer "atributo_id", precision: 38, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["atributo_id"], name: "i_opcion_cas_atributo_id"
    t.index ["componente_id"], name: "i_opcion_cas_componente_id"
    t.index ["opcion_id"], name: "index_opcion_cas_on_opcion_id"
  end

  create_table "opciones", comment: "Cat??logo de opciones", force: :cascade do |t|
    t.string "nombre", limit: 200, null: false, comment: "Nombre de la opci??n"
    t.string "descripcion", comment: "Descripci??n general de la opci??n"
    t.string "icono", limit: 50, comment: "Icono que identificar?? la opci??n"
    t.string "path", null: false, comment: "Identificador de ruta de navegaci??n"
    t.string "controlador", limit: 300, null: false, comment: "Identificador de controlador de navegaci??n"
    t.string "codigo_hex", comment: "Color Hexadecimal que identificar?? la opci??n"
    t.integer "user_created_id", precision: 38, comment: "Identificador de usuario al registrar en la aplicaci??n web"
    t.integer "user_updated_id", precision: 38, null: false, comment: "Identificador de usuario al actualizar en la aplicaci??n web"
    t.string "estado", limit: 10, default: "A", null: false, comment: "Estado de la opci??n: [A]: Activo;  [I]: Inactivo"
    t.string "aplica_carga_masiva", limit: 10
    t.integer "menu_id", precision: 38, null: false, comment: "Identificador del menu para la opci??n"
    t.integer "posicion", precision: 38, comment: "Orden que tendra cada opci??n"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["menu_id"], name: "index_opciones_on_menu_id"
  end

  create_table "parametros", force: :cascade do |t|
    t.integer "area_id", precision: 38
    t.string "nombre_area"
    t.integer "empresa_id", precision: 38
    t.string "nombre_empresa"
    t.string "ruta_predeterminada"
    t.string "view_default"
    t.integer "user_id", precision: 38, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_parametros_on_user_id"
  end

  create_table "persona_empresa_formularios", force: :cascade do |t|
    t.string "descripcion"
    t.integer "user_created_id", precision: 38
    t.integer "user_updated_id", precision: 38
    t.string "estado", limit: 10
    t.integer "personas_area_id", precision: 38, null: false
    t.integer "opcion_ca_id", precision: 38, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["opcion_ca_id"], name: "i_per_emp_for_opc_ca_id"
    t.index ["personas_area_id"], name: "i_per_emp_for_per_are_id"
  end

  create_table "personas", force: :cascade do |t|
    t.string "nombre", limit: 200
    t.string "apellido", limit: 200
    t.text "foto"
    t.integer "telefono", precision: 38
    t.integer "chat_id_telegram", precision: 38
    t.string "direccion"
    t.string "token", limit: 1000
    t.integer "user_created_id", precision: 38
    t.integer "user_updated_id", precision: 38
    t.string "estado", limit: 10
    t.integer "user_id", precision: 38, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_personas_on_user_id"
  end

  create_table "personas_areas", force: :cascade do |t|
    t.string "descripcion"
    t.integer "user_created_id", precision: 38
    t.integer "user_updated_id", precision: 38
    t.string "estado", limit: 10
    t.integer "rol_id", precision: 38
    t.integer "persona_id", precision: 38, null: false
    t.integer "area_id", precision: 38, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["area_id"], name: "i_personas_areas_area_id"
    t.index ["persona_id"], name: "i_personas_areas_persona_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "nombre", limit: 200
    t.string "descripcion"
    t.string "codigo_hex"
    t.integer "user_created_id", precision: 38
    t.integer "user_updated_id", precision: 38
    t.string "estado", limit: 10
    t.string "slug"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
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

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at", precision: 6
    t.datetime "remember_created_at", precision: 6
    t.integer "user_created_id", precision: 38
    t.integer "user_updated_id", precision: 38
    t.string "estado", default: "A", comment: "Estado del user: [A]: Activo;  [I]: Inactivo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
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
  add_foreign_key "areas", "empresas"
  add_foreign_key "menu_roles", "opciones"
  add_foreign_key "menu_roles", "roles"
  add_foreign_key "opcion_cas", "atributos"
  add_foreign_key "opcion_cas", "componentes"
  add_foreign_key "opcion_cas", "opciones"
  add_foreign_key "opciones", "menus"
  add_foreign_key "parametros", "users"
  add_foreign_key "persona_empresa_formularios", "opcion_cas"
  add_foreign_key "persona_empresa_formularios", "personas_areas"
  add_foreign_key "personas", "users"
  add_foreign_key "personas_areas", "areas"
  add_foreign_key "personas_areas", "personas"

  create_view "areas_views", sql_definition: <<-SQL
      select 
  areas."ID",areas."CODIGO_AREA",areas."NOMBRE",areas."CODIGO_HEX",areas."DESCRIPCION",areas."USER_CREATED_ID",areas."USER_UPDATED_ID",areas."ESTADO",areas."EMPRESA_ID",areas."CREATED_AT",areas."UPDATED_AT", 
  empresas.codigo_empresa, 
  empresas.nombre as nombre_empresa, 
  (empresas.codigo_empresa||': '||empresas.nombre) as codigo_nombre_empresa, 
  empresas.codigo_hex as codigo_hex_empresa
  from areas
  inner join empresas on(areas.empresa_id=empresas.id)
  SQL
  create_view "menu_roles_views", sql_definition: <<-SQL
      select menu_roles."ID",menu_roles."MENU_ID",menu_roles."DESCRIPCION",menu_roles."USER_CREATED_ID",menu_roles."USER_UPDATED_ID",menu_roles."ESTADO",menu_roles."OPCION_ID",menu_roles."ROL_ID",menu_roles."CREATED_AT",menu_roles."UPDATED_AT",
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
  create_view "opciones_views", sql_definition: <<-SQL
      select opciones."ID",opciones."NOMBRE",opciones."DESCRIPCION",opciones."ICONO",opciones."PATH",opciones."CONTROLADOR",opciones."CODIGO_HEX",opciones."USER_CREATED_ID",opciones."USER_UPDATED_ID",opciones."ESTADO",opciones."APLICA_CARGA_MASIVA",opciones."MENU_ID",opciones."POSICION",opciones."CREATED_AT",opciones."UPDATED_AT",
  menus.nombre as nombre_menu, 
  menus.icono as icono_menu, 
  menus.codigo_hex as codigo_hex_menu
  from opciones
  inner join menus on(opciones.menu_id=menus.id)
  SQL
  create_view "opcion_cas_views", sql_definition: <<-SQL
      select opcion_cas."ID",opcion_cas."DESCRIPCION",opcion_cas."USER_CREATED_ID",opcion_cas."USER_UPDATED_ID",opcion_cas."ESTADO",opcion_cas."OPCION_ID",opcion_cas."COMPONENTE_ID",opcion_cas."ATRIBUTO_ID",opcion_cas."CREATED_AT",opcion_cas."UPDATED_AT",
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
      select personas_areas."ID",personas_areas."DESCRIPCION",personas_areas."USER_CREATED_ID",personas_areas."USER_UPDATED_ID",personas_areas."ESTADO",personas_areas."ROL_ID",personas_areas."PERSONA_ID",personas_areas."AREA_ID",personas_areas."CREATED_AT",personas_areas."UPDATED_AT",
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
