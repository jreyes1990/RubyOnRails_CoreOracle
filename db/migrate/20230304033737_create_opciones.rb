class CreateOpciones < ActiveRecord::Migration[6.0]
  def change
    create_table :opciones, comment: "Catálogo de opciones" do |t|
      t.string :nombre, limit: 200, null: false, comment: "Nombre de la opción"
      t.string :descripcion, null: true, comment: "Descripción general de la opción"
      t.string :icono, limit: 50, null: true, comment: "Icono que identificará la opción"
      t.string :path, null: false, comment: "Identificador de ruta de navegación"
      t.string :controlador, limit: 300, null: false, comment: "Identificador de controlador de navegación"
      t.string :codigo_hex, null: true, comment: "Color Hexadecimal que identificará la opción"
      t.integer :user_created_id, null: true, comment: "Identificador de usuario al registrar en la aplicación web"
      t.integer :user_updated_id, null: false, comment: "Identificador de usuario al actualizar en la aplicación web"
      t.string :estado, limit: 10, null: false, default: "A", comment: "Estado de la opción: [A]: Activo;  [I]: Inactivo"
      t.string :aplica_carga_masiva, limit: 10
      t.references :menu, null: false, foreign_key: true, name: 'fk_opcion_menu', comment: "Identificador del menu para la opción"
      t.integer :posicion, null: true, comment: "Orden que tendra cada opción"

      t.timestamps
    end

    # Agregar el constraint CHECK sin el punto y coma al final
    execute <<-SQL
      alter table opciones add(
        constraint ck_estado_opcion
        check (estado in ('A', 'I'))
        enable validate
      )
    SQL
  end
end
