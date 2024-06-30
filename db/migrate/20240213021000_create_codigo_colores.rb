class CreateCodigoColores < ActiveRecord::Migration[6.0]
  def change
    create_table :codigo_colores do |t|
      t.string :disenio, limit: 50
      t.string :nombre_color, limit: 100, comment: "Nombre del color"
      t.string :colores, limit: 25, comment: "Identificador del color"
      t.string :codigo_hex, limit: 25, comment: "Identificador del color, codigo hexadecimal"
      t.string :codigo_rgb, limit: 50, comment: "Identificador del color, codigo RGB"
      t.string :codigo_hls, limit: 50, comment: "Identificador del color, codigo HLS"
      t.integer :user_created_id, null: true, comment: "Identificador de usuario al registrar en la aplicación web"
      t.integer :user_updated_id, null: false, comment: "Identificador de usuario al actualizar en la aplicación web"
      t.string :estado, limit: 10, null: false, default: "A", comment: "Estado de codigo de colores: [A]: Activo  [I]: Inactivo"

      t.timestamps
    end

    # Agregar el constraint CHECK sin el punto y coma al final
    execute <<-SQL
      alter table codigo_colores add(
        constraint ck_estado_color
        check (estado in ('A', 'I'))
        enable validate
      )
    SQL

    # Agregar comentarios a la tabla
    execute <<-SQL
      comment on table codigo_colores is 'Catálogo de codigo de colores'
    SQL

    # Agregar comentarios a las columnas
    execute <<-SQL
      comment on column codigo_colores.id is 'Identificador de la llave primaria'
    SQL

    execute <<-SQL
      comment on column codigo_colores.created_at is 'Fecha y hora al registrar datos'
    SQL

    execute <<-SQL
      comment on column codigo_colores.updated_at is 'Fecha y hora al actualizar datos'
    SQL
  end
end
