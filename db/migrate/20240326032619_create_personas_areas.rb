class CreatePersonasAreas < ActiveRecord::Migration[6.0]
  def change
    create_table :personas_areas do |t|
      t.references :persona, null: false, foreign_key: false, comment: "Identificador de la persona para la persona por área"
      t.references :area, null: false, foreign_key: false, comment: "Identificador del área para la persona por área"
      t.references :rol, null: true, foreign_key: false, comment: "Identificador del rol para la persona por área"
      t.string :descripcion, null: true, comment: "Descripción general de la persona por área"
      t.integer :user_created_id, null: false, comment: "Identificador de usuario al registrar en la aplicación web"
      t.integer :user_updated_id, null: true, comment: "Identificador de usuario al actualizar en la aplicación web"
      t.string :estado, limit: 10, null: false, default: "A", comment: "Estado de la persona por área: [A]: Activo  [I]: Inactivo"

      t.timestamps
    end

    # Agregar la clave foránea con el nombre personalizado
    add_foreign_key :personas_areas, :personas, column: :persona_id, name: 'fk_personarea_persona'
    add_foreign_key :personas_areas, :areas, column: :area_id, name: 'fk_personarea_area'
    add_foreign_key :personas_areas, :roles, column: :rol_id, name: 'fk_personarea_rol'

    # Agregar el constraint CHECK sin el punto y coma al final
    execute <<-SQL
      alter table personas_areas add(
        constraint ck_estado_personarea
        check (estado in ('A', 'I'))
        enable validate
      )
    SQL

    # Agregar comentarios a la tabla
    execute <<-SQL
      comment on table personas_areas is 'Catálogo de personas por área'
    SQL

    # Agregar comentarios a las columnas
    execute <<-SQL
      comment on column personas_areas.id is 'Identificador de la llave primaria'
    SQL

    execute <<-SQL
      comment on column personas_areas.created_at is 'Fecha y hora al registrar datos'
    SQL

    execute <<-SQL
      comment on column personas_areas.updated_at is 'Fecha y hora al actualizar datos'
    SQL
  end
end
