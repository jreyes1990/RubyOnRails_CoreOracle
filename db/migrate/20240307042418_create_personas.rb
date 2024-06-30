class CreatePersonas < ActiveRecord::Migration[6.0]
  def change
    create_table :personas do |t|
      t.references :user, null: false, foreign_key: false, comment: "Identificador del usuario"
      t.string :nombre, limit: 200, null: false, comment: "Nombre de la persona"
      t.string :apellido, limit: 200, null: false, comment: "Apellido de la persona"
      t.text :foto, null: true, comment: "Foto de la persona"
      t.integer :telefono
      t.integer :chat_id_telegram
      t.string :direccion
      t.string :token, limit: 1000
      t.integer :user_created_id, null: false, comment: "Identificador de usuario al registrar en la aplicación web"
      t.integer :user_updated_id, null: true, comment: "Identificador de usuario al actualizar en la aplicación web"
      t.string :estado, limit: 10, null: false, default: "A", comment: "Estado de la persona: [A]: Activo  [I]: Inactivo"

      t.timestamps
    end

    # Agregar la clave foránea con el nombre personalizado
    add_foreign_key :personas, :users, column: :user_id, name: 'fk_persona_user'

    # Agregar el constraint CHECK sin el punto y coma al final
    execute <<-SQL
      alter table personas add(
        constraint ck_estado_persona
        check (estado in ('A', 'I'))
        enable validate
      )
    SQL

    # Agregar comentarios a la tabla
    execute <<-SQL
      comment on table personas is 'Catálogo de personas'
    SQL

    # Agregar comentarios a las columnas
    execute <<-SQL
      comment on column personas.id is 'Identificador de la llave primaria'
    SQL

    execute <<-SQL
      comment on column personas.created_at is 'Fecha y hora al registrar datos'
    SQL

    execute <<-SQL
      comment on column personas.updated_at is 'Fecha y hora al actualizar datos'
    SQL
  end
end
