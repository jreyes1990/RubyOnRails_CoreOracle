class CreateOpciones < ActiveRecord::Migration[6.0]
  def change
    create_table :opciones do |t|
      t.references :menu, null: false, foreign_key: false, comment: "Identificador del menu para la opción"
      t.string :nombre, limit: 200, null: false, comment: "Nombre de la opción"
      t.string :descripcion, null: true, comment: "Descripción general de la opción"
      t.string :icono, limit: 50, null: true, comment: "Icono que identificará la opción"
      t.string :path, null: false, comment: "Identificador de ruta de navegación"
      t.string :controlador, limit: 300, null: false, comment: "Identificador de controlador de navegación"
      t.string :codigo_hex, null: true, default: "#232323", comment: "Color Hexadecimal que identificará la opción"
      t.string :componente_sidebar, null: true, comment: "Identificador el componente a utilizar en el sidebar"
      t.boolean :visible_sidebar, null: true, default: true, comment: "El componente será visible en el sidebar?"
      t.integer :posicion, null: true, comment: "Orden del componente a utilizar en el sidebar"
      t.integer :user_created_id, null: false, comment: "Identificador de usuario al registrar en la aplicación web"
      t.integer :user_updated_id, null: true, comment: "Identificador de usuario al actualizar en la aplicación web"
      t.string :estado, limit: 10, null: false, default: "A", comment: "Estado de la opción: [A]: Activo  [I]: Inactivo"
      t.string :aplica_carga_masiva, limit: 10

      t.timestamps
    end

    # Crear la columna de referencia
    # add_reference :opciones, :menu, null: false, comment: "Identificador del menu para la opción"

    # Agregar la clave foránea con el nombre personalizado
    add_foreign_key :opciones, :menus, column: :menu_id, name: 'fk_opcion_menu'

    # Agregar el constraint CHECK sin el punto y coma al final
    execute <<-SQL
      alter table opciones add(
        constraint ck_estado_opcion
        check (estado in ('A', 'I'))
        enable validate
      )
    SQL

    # Agregar la clave foránea con el nombre personalizado usando SQL directo
    # execute <<-SQL
    #   alter table opciones add(
    #     constraint fk_opcion_menu
    #     foreign key (menu_id)
    #     references menus(id)
    #     on delete set null
    #     enable validate
    #   )
    # SQL

    # Agregar comentarios a la tabla
    execute <<-SQL
      comment on table opciones is 'Catálogo de opciones'
    SQL

    # Agregar comentarios a las columnas
    execute <<-SQL
      comment on column opciones.id is 'Identificador de la llave primaria'
    SQL

    execute <<-SQL
      comment on column opciones.created_at is 'Fecha y hora al registrar datos'
    SQL

    execute <<-SQL
      comment on column opciones.updated_at is 'Fecha y hora al actualizar datos'
    SQL
  end
end
