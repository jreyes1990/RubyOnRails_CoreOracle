class CreateFontAwesomes < ActiveRecord::Migration[6.0]
  def change
    create_table :font_awesomes do |t|
      t.string :icono, limit: 50, comment: "Identificador del icono"
      t.string :prefijo_nombre, limit: 150
      t.string :termino
      t.string :codigo_css, limit: 25, comment: "Identificador codigo CSS del icono"
      t.string :tipo_icono, limit: 50
      t.integer :user_created_id, null: true, comment: "Identificador de usuario al registrar en la aplicación web"
      t.integer :user_updated_id, null: false, comment: "Identificador de usuario al actualizar en la aplicación web"
      t.string :estado, limit: 10, null: false, default: "A", comment: "Estado del FontAwesome: [A]: Activo  [I]: Inactivo"

      t.timestamps
    end

    # Agregar el constraint CHECK sin el punto y coma al final
    execute <<-SQL
      alter table font_awesomes add(
        constraint ck_estado_fontawe
        check (estado in ('A', 'I'))
        enable validate
      )
    SQL

    # Agregar comentarios a la tabla
    execute <<-SQL
      comment on table font_awesomes is 'Catálogo de FontAwesomes'
    SQL

    # Agregar comentarios a las columnas
    execute <<-SQL
      comment on column font_awesomes.id is 'Identificador de la llave primaria'
    SQL

    execute <<-SQL
      comment on column font_awesomes.created_at is 'Fecha y hora al registrar datos'
    SQL

    execute <<-SQL
      comment on column font_awesomes.updated_at is 'Fecha y hora al actualizar datos'
    SQL
  end
end
