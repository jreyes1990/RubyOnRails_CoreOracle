class CreateParametros < ActiveRecord::Migration[6.0]
  def change
    create_table :parametros do |t|
      t.references :empresa, null: false, foreign_key: false, comment: "Identificador de la empresa para el parámetro"
      t.references :area, null: false, foreign_key: false, comment: "Identificador del área para el parámetro"
      t.references :user, null: false, foreign_key: false, comment: "Identificador del usuario para el parámetro"
      t.string :nombre_area
      t.string :nombre_empresa
      t.string :ruta_predeterminada
      t.string :view_default

      t.timestamps
    end

    # Agregar la clave foránea con el nombre personalizado
    add_foreign_key :parametros, :empresas, column: :empresa_id, name: 'fk_parametro_empresa'
    add_foreign_key :parametros, :areas, column: :area_id, name: 'fk_parametro_area'
    add_foreign_key :parametros, :users, column: :user_id, name: 'fk_parametro_user'

    # Agregar comentarios a la tabla
    execute <<-SQL
      comment on table parametros is 'Catálogo de parámetros'
    SQL

    # Agregar comentarios a las columnas
    execute <<-SQL
      comment on column parametros.id is 'Identificador de la llave primaria'
    SQL

    execute <<-SQL
      comment on column parametros.created_at is 'Fecha y hora al registrar datos'
    SQL

    execute <<-SQL
      comment on column parametros.updated_at is 'Fecha y hora al actualizar datos'
    SQL
  end
end
