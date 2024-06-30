class CreateRoles < ActiveRecord::Migration[6.0]
  def change
    create_table :roles do |t|
      t.string :nombre, limit: 200, null: false, comment: "Nombre del rol"
      t.string :descripcion, null: true, comment: "Descripción general del rol"
      t.string :codigo_hex, null: true, comment: "Color Hexadecimal que identificará el rol"
      t.integer :user_created_id, null: true, comment: "Identificador de usuario al registrar en la aplicación web"
      t.integer :user_updated_id, null: false, comment: "Identificador de usuario al actualizar en la aplicación web"
      t.string :estado, limit: 10, null: false, default: "A", comment: "Estado del rol: [A]: Activo  [I]: Inactivo"
      t.string :slug
      t.index :slug

      t.timestamps
    end

    # Agregar el constraint CHECK sin el punto y coma al final
    execute <<-SQL
      alter table roles add(
        constraint ck_estado_rol
        check (estado in ('A', 'I'))
        enable validate
      )
    SQL

    # Agregar comentarios a la tabla
    execute <<-SQL
      comment on table roles is 'Catálogo de roles'
    SQL

    # Agregar comentarios a las columnas
    execute <<-SQL
      comment on column roles.id is 'Identificador de la llave primaria'
    SQL

    execute <<-SQL
      comment on column roles.created_at is 'Fecha y hora al registrar datos'
    SQL

    execute <<-SQL
      comment on column roles.updated_at is 'Fecha y hora al actualizar datos'
    SQL
  end
end
