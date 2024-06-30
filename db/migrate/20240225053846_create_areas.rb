class CreateAreas < ActiveRecord::Migration[6.0]
  def change
    create_table :areas do |t|
      t.references :empresa, null: false, foreign_key: false, comment: "Identificador de la empresa para la el área"
      t.integer :codigo_area, comment: "Identificador del código del área"
      t.string :nombre, limit: 200, comment: "Nombre del área"
      t.string :descripcion, comment: "Descripción general del área"
      t.string :codigo_hex, comment: "Identificador del color codigo hexadecimal para el área"
      t.integer :user_created_id, null: true, comment: "Identificador de usuario al registrar en la aplicación web"
      t.integer :user_updated_id, null: false, comment: "Identificador de usuario al actualizar en la aplicación web"
      t.string :estado, limit: 10, null: false, default: "A", comment: "Estado del área: [A]: Activo  [I]: Inactivo"

      t.timestamps
    end

    # Agregar la clave foránea con el nombre personalizado
    add_foreign_key :areas, :empresas, column: :empresa_id, name: 'fk_area_empresa'

    # Agregar el constraint CHECK sin el punto y coma al final
    execute <<-SQL
      alter table areas add(
        constraint ck_estado_area
        check (estado in ('A', 'I'))
        enable validate
      )
    SQL

    # Agregar comentarios a la tabla
    execute <<-SQL
      comment on table areas is 'Catálogo de áreas por empresa'
    SQL

    # Agregar comentarios a las columnas
    execute <<-SQL
      comment on column areas.id is 'Identificador de la llave primaria'
    SQL

    execute <<-SQL
      comment on column areas.created_at is 'Fecha y hora al registrar datos'
    SQL

    execute <<-SQL
      comment on column areas.updated_at is 'Fecha y hora al actualizar datos'
    SQL
  end
end
