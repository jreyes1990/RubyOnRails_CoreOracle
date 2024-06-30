# This migration comes from action_text (originally 20180528164100)
class CreateActionTextTables < ActiveRecord::Migration[6.0]
  def change
    create_table :action_text_rich_texts do |t|
      t.references :record, null: false, polymorphic: true, index: false, comment: "Identificador del record"
      t.string     :name, null: false, comment: "Nombre del texto enriquecido"
      t.text       :body, size: :long, comment: "Texto general del texto enriquecido"

      t.timestamps

      t.index [ :record_type, :record_id, :name ], name: "UDX_action_text_rich_texts", unique: true
    end

    # Agregar comentarios a la tabla
    execute <<-SQL
      comment on table action_text_rich_texts is 'Catálogo de texto enriquecido'
    SQL

    # Agregar comentarios a las columnas
    execute <<-SQL
      comment on column action_text_rich_texts.id is 'Identificador de la llave primaria'
    SQL

    execute <<-SQL
      comment on column action_text_rich_texts.created_at is 'Fecha y hora al registrar datos'
    SQL

    execute <<-SQL
      comment on column action_text_rich_texts.updated_at is 'Fecha y hora al actualizar datos'
    SQL
  end
end
