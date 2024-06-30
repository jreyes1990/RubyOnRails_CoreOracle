class CreateMenus < ActiveRecord::Migration[6.0]
  def change
    create_table :menus do |t|
      t.string :nombre, limit: 200, null: false, comment: "Nombre del menú"
      t.string :descripcion, null: true, comment: "Descripción general del menú"
      t.string :icono, limit: 50, null: false, comment: "Identificador de icono para el menú"
      t.string :codigo_hex, null: false, comment: "Identificador de color, codigo hexadecimal para el menú"
      t.integer :user_created_id, null: true, comment: "Identificador de usuario al registrar en la aplicación web"
      t.integer :user_updated_id, null: false, comment: "Identificador de usuario al actualizar en la aplicación web"
      t.string :estado, limit: 10, null: false, default: "A", comment: "Estado del menú: [A]: Activo  [I]: Inactivo"

      t.timestamps
    end

    # Agregar el constraint CHECK sin el punto y coma al final
    execute <<-SQL
      alter table menus add(
        constraint ck_estado_menu
        check (estado in ('A', 'I'))
        enable validate
      )
    SQL

    # Agregar comentarios a la tabla
    execute <<-SQL
      comment on table menus is 'Catálogo de menús'
    SQL

    # Agregar comentarios a las columnas
    execute <<-SQL
      comment on column menus.id is 'Identificador de la llave primaria'
    SQL

    execute <<-SQL
      comment on column menus.created_at is 'Fecha y hora al registrar datos'
    SQL

    execute <<-SQL
      comment on column menus.updated_at is 'Fecha y hora al actualizar datos'
    SQL
  end
end
