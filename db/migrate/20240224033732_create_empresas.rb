class CreateEmpresas < ActiveRecord::Migration[6.0]
  def change
    create_table :empresas, id: false do |t|
      t.integer :id, null: false
      t.integer :codigo_empresa, null: false, comment: "Identificador codigo de la empresa"
      t.string :nombre, limit: 200, null: false, comment: "Nombre de la empresa"
      t.string :descripcion, null: true, comment: "Descripción general de la empresa"
      t.string :codigo_hex, null: true, default: "#232323", comment: "Identificador del color codigo hexadecimal para la empresa"
      t.integer :user_created_id, null: false, comment: "Identificador de usuario al registrar en la aplicación web"
      t.integer :user_updated_id, null: true, comment: "Identificador de usuario al actualizar en la aplicación web"
      t.string :estado, limit: 10, null: false, default: "A", comment: "Estado de la empresa: [A]: Activo  [I]: Inactivo"

      t.timestamps
    end

    # Crear una secuencia para autoincrementar la columna id
    execute <<-SQL
      CREATE SEQUENCE empresas_seq START WITH 1 INCREMENT BY 1
    SQL

    # Crear el índice y la restricción de clave primaria con un nombre específico
    execute <<-SQL
      ALTER TABLE empresas ADD
        CONSTRAINT pk_empresa PRIMARY KEY (id)
    SQL

    # Agregar el constraint CHECK sin el punto y coma al final
    execute <<-SQL
      alter table empresas add(
        constraint ck_estado_empresa
        check (estado in ('A', 'I'))
        enable validate
      )
    SQL

    # Crear un trigger para asignar el valor de la secuencia a la columna id
    # execute <<-SQL
    #   CREATE OR REPLACE TRIGGER trg_empresas
    #   BEFORE INSERT ON empresas
    #   FOR EACH ROW
    #   BEGIN
    #     :new.id := empresas_seq.NEXTVAL;
    #   END;
    # SQL

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
