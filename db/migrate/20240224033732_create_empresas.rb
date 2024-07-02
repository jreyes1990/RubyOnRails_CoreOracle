class CreateEmpresas < ActiveRecord::Migration[6.0]
  def change
    create_table :empresas do |t|
      t.integer :codigo_empresa, null: false, comment: "Identificador codigo de la empresa"
      t.string :nombre, limit: 200, null: false, comment: "Nombre de la empresa"
      t.string :descripcion, null: true, comment: "Descripción general de la empresa"
      t.string :codigo_hex, null: true, default: "#232323", comment: "Identificador del color codigo hexadecimal para la empresa"
      t.integer :user_created_id, null: false, comment: "Identificador de usuario al registrar en la aplicación web"
      t.integer :user_updated_id, null: true, comment: "Identificador de usuario al actualizar en la aplicación web"
      t.string :estado, limit: 10, null: false, default: "A", comment: "Estado de la empresa: [A]: Activo  [I]: Inactivo"

      t.timestamps
    end

    # Agregar el constraint CHECK sin el punto y coma al final
    execute <<-SQL
      alter table empresas add(
        constraint ck_estado_empresa
        check (estado in ('A', 'I'))
        enable validate
      )
    SQL

    # Agregar comentarios a la tabla
    execute <<-SQL
      comment on table empresas is 'Catálogo de empresas'
    SQL

    # Agregar comentarios a las columnas
    execute <<-SQL
      comment on column empresas.id is 'Identificador de la llave primaria'
    SQL

    execute <<-SQL
      comment on column empresas.created_at is 'Fecha y hora al registrar datos'
    SQL

    execute <<-SQL
      comment on column empresas.updated_at is 'Fecha y hora al actualizar datos'
    SQL
  end
end
