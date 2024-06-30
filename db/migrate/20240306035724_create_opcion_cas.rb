class CreateOpcionCas < ActiveRecord::Migration[6.0]
  def change
    create_table :opcion_cas do |t|
      t.references :opcion, null: false, foreign_key: false, comment: "Identificador del menu para la opción_ca"
      t.references :componente, null: false, foreign_key: false, comment: "Identificador del componente para la opción_ca"
      t.references :atributo, null: false, foreign_key: false, comment: "Identificador del atributo para la opción_ca"
      t.string :descripcion, null: true, comment: "Descripción general de la opción_ca"
      t.integer :user_created_id, null: false, comment: "Identificador de usuario al registrar en la aplicación web"
      t.integer :user_updated_id, null: true, comment: "Identificador de usuario al actualizar en la aplicación web"
      t.string :estado, limit: 10, null: false, default: "A", comment: "Estado de la opción-componente-atributo: [A]: Activo  [I]: Inactivo"

      t.timestamps
    end

    # Agregar la clave foránea con el nombre personalizado
    add_foreign_key :opcion_cas, :opciones, column: :opcion_id, name: 'fk_opcionca_opcion'
    add_foreign_key :opcion_cas, :componentes, column: :componente_id, name: 'fk_opcionca_componente'
    add_foreign_key :opcion_cas, :atributos, column: :atributo_id, name: 'fk_opcionca_atributo'

    # Agregar el constraint CHECK sin el punto y coma al final
    execute <<-SQL
      alter table opcion_cas add(
        constraint ck_estado_opcionca
        check (estado in ('A', 'I'))
        enable validate
      )
    SQL

    # Agregar comentarios a la tabla
    execute <<-SQL
      comment on table opcion_cas is 'Catálogo de opcion-componente-atributos'
    SQL

    # Agregar comentarios a las columnas
    execute <<-SQL
      comment on column opcion_cas.id is 'Identificador de la llave primaria'
    SQL

    execute <<-SQL
      comment on column opcion_cas.created_at is 'Fecha y hora al registrar datos'
    SQL

    execute <<-SQL
      comment on column opcion_cas.updated_at is 'Fecha y hora al actualizar datos'
    SQL
  end
end
