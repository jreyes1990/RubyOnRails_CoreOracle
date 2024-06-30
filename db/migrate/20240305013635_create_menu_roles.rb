class CreateMenuRoles < ActiveRecord::Migration[6.0]
  def change
    create_table :menu_roles do |t|
      t.references :menu, null: false, foreign_key: false, comment: "Identificador del menu para la opción"
      t.references :opcion, null: false, foreign_key: false, comment: "Identificador de la opcion para el menú"
      t.references :rol, null: false, foreign_key: false, comment: "Identificador del rol para el menú-rol"
      t.string :descripcion, null: true, comment: "Descripción general del menú por rol"
      t.integer :user_created_id, null: false, comment: "Identificador de usuario al registrar en la aplicación web"
      t.integer :user_updated_id, null: true, comment: "Identificador de usuario al actualizar en la aplicación web"
      t.string :estado, limit: 10, null: false, default: "A", comment: "Estado del menú-rol: [A]: Activo  [I]: Inactivo"

      t.timestamps
    end

    # Agregar la clave foránea con el nombre personalizado
    add_foreign_key :menu_roles, :menus, column: :menu_id, name: 'fk_menurol_menu'
    add_foreign_key :menu_roles, :opciones, column: :opcion_id, name: 'fk_menurol_opcion'
    add_foreign_key :menu_roles, :roles, column: :rol_id, name: 'fk_menurol_rol'

    # Agregar el constraint CHECK sin el punto y coma al final
    execute <<-SQL
      alter table menu_roles add(
        constraint ck_estado_menurol
        check (estado in ('A', 'I'))
        enable validate
      )
    SQL

    # Agregar comentarios a la tabla
    execute <<-SQL
      comment on table menu_roles is 'Catálogo de menú por rol'
    SQL

    # Agregar comentarios a las columnas
    execute <<-SQL
      comment on column menu_roles.id is 'Identificador de la llave primaria'
    SQL

    execute <<-SQL
      comment on column menu_roles.created_at is 'Fecha y hora al registrar datos'
    SQL

    execute <<-SQL
      comment on column menu_roles.updated_at is 'Fecha y hora al actualizar datos'
    SQL
  end
end
