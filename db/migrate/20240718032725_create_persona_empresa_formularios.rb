class CreatePersonaEmpresaFormularios < ActiveRecord::Migration[6.0]
  def change
    create_table :persona_empresa_formularios do |t|
      t.references :personas_area, null: false, foreign_key: false, comment: "Identificador de la persona por área"
      t.references :opcion_ca, null: false, foreign_key: false, comment: "Identificador de la opcion-componente-atributo"
      t.string :descripcion, null: true, comment: "Descripción general de la persona empresa formulario"
      t.integer :user_created_id, null: false, comment: "Identificador de usuario al registrar en la aplicación web"
      t.integer :user_updated_id, null: true, comment: "Identificador de usuario al actualizar en la aplicación web"
      t.string :estado, limit: 10, null: false, default: "A", comment: "Estado de la persona empresa formulario: [A]: Activo  [I]: Inactivo"

      t.timestamps
    end

    # Agregar la clave foránea con el nombre personalizado
    add_foreign_key :persona_empresa_formularios, :personas_areas, column: :personas_area_id, name: 'fk_peform_personarea'
    add_foreign_key :persona_empresa_formularios, :opcion_cas, column: :opcion_ca_id, name: 'fk_peform_opcionca'

    # Agregar el constraint CHECK sin el punto y coma al final
    execute <<-SQL
      alter table persona_empresa_formularios add(
        constraint ck_estado_peformulario
        check (estado in ('A', 'I'))
        enable validate
      )
    SQL

    # Agregar comentarios a la tabla
    execute <<-SQL
      comment on table persona_empresa_formularios is 'Módulo de persona empresa formularios'
    SQL

    # Agregar comentarios a las columnas
    execute <<-SQL
      comment on column persona_empresa_formularios.id is 'Identificador de la llave primaria'
    SQL

    execute <<-SQL
      comment on column persona_empresa_formularios.created_at is 'Fecha y hora al registrar datos'
    SQL

    execute <<-SQL
      comment on column persona_empresa_formularios.updated_at is 'Fecha y hora al actualizar datos'
    SQL
  end
end
