class CreateAtributos < ActiveRecord::Migration[6.0]
  def change
    create_table :atributos do |t|
      t.string :nombre, limit: 200, null: false, comment: "Nombre del atributo"
      t.string :descripcion, null: true, comment: "Descripción general del atributo"
      t.integer :user_created_id, null: false, comment: "Identificador de usuario al registrar en la aplicación web"
      t.integer :user_updated_id, null: true, comment: "Identificador de usuario al actualizar en la aplicación web"
      t.string :estado, limit: 10, null: false, default: "A", comment: "Estado del atributo: [A]: Activo  [I]: Inactivo"

      t.timestamps
    end

    # Agregar el constraint CHECK sin el punto y coma al final
    execute <<-SQL
      alter table atributos add(
        constraint ck_estado_atributo
        check (estado in ('A', 'I'))
        enable validate
      )
    SQL

    # Agregar comentarios a la tabla
    execute <<-SQL
      comment on table atributos is 'Catálogo de atributos'
    SQL

    # Agregar comentarios a las columnas
    execute <<-SQL
      comment on column atributos.id is 'Identificador de la llave primaria'
    SQL

    execute <<-SQL
      comment on column atributos.created_at is 'Fecha y hora al registrar datos'
    SQL

    execute <<-SQL
      comment on column atributos.updated_at is 'Fecha y hora al actualizar datos'
    SQL
  end
end
