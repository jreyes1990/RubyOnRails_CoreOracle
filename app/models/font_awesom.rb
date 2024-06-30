# == Schema Information
#
# Table name: font_awesomes
#
#  id(Identificador de la llave primaria)                                        :integer          not null, primary key
#  codigo_css(Identificador codigo CSS del icono)                                :string(25)
#  estado(Estado del FontAwesome: [A]: Activo  [I]: Inactivo)                    :string(10)       default("A"), not null
#  icono(Identificador del icono)                                                :string(50)
#  prefijo_nombre                                                                :string(150)
#  termino                                                                       :string(255)
#  tipo_icono                                                                    :string(50)
#  created_at(Fecha y hora al registrar datos)                                   :datetime         not null
#  updated_at(Fecha y hora al actualizar datos)                                  :datetime         not null
#  user_created_id(Identificador de usuario al registrar en la aplicaci??n web)  :integer
#  user_updated_id(Identificador de usuario al actualizar en la aplicaci??n web) :integer          not null
#
class FontAwesom < ApplicationRecord
  has_rich_text :observacion
  has_one_attached :main_image
  has_many_attached :other_images

  validates_presence_of :icono, :tipo_icono, message: ": este campo es obligatorio"
  validates :icono, uniqueness: {case_sensitive: false, scope: :estado, message: "El Icono que intenta registrar ya existe" }

  def attach_other_images(signed_blob_id)
    blob = ActiveStorage::Blob.find_signed(signed_blob_id)
    return other_images.attach(signed_blob_id) unless blob.present?

    other_images.attach(blob.signed_id) unless other_images.attachments.map(&:blob_id).include?(blob.id)
  end
end
