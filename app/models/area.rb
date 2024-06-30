# == Schema Information
#
# Table name: areas
#
#  id(Identificador de la llave primaria)                                        :integer          not null, primary key
#  codigo_area(Identificador del c??digo del ??rea)                              :integer
#  codigo_hex(Identificador del color codigo hexadecimal para el ??rea)          :string(255)
#  descripcion(Descripci??n general del ??rea)                                   :string(255)
#  estado(Estado del ??rea: [A]: Activo  [I]: Inactivo)                          :string(10)       default("A"), not null
#  nombre(Nombre del ??rea)                                                      :string(200)
#  created_at(Fecha y hora al registrar datos)                                   :datetime         not null
#  updated_at(Fecha y hora al actualizar datos)                                  :datetime         not null
#  empresa_id(Identificador de la empresa para la el ??rea)                      :integer          not null
#  user_created_id(Identificador de usuario al registrar en la aplicaci??n web)  :integer
#  user_updated_id(Identificador de usuario al actualizar en la aplicaci??n web) :integer          not null
#
# Indexes
#
#  index_areas_on_empresa_id  (empresa_id)
#
# Foreign Keys
#
#  fk_area_empresa  (empresa_id => empresas.id)
#
class Area < ApplicationRecord
  belongs_to :empresa

  has_many :personas_areas
  
  validates_presence_of :nombre, :empresa_id, :estado, message: ": este campo es obligatorio"
  validates :nombre, uniqueness: {case_sensitive: false, scope: [:codigo_area, :empresa_id, :estado], message: "El Área que intenta registrar ya existe" }

  def nombre_area_empresa
    "#{self.empresa.nombre.upcase} - #{self.nombre.upcase}"
  end

  def area_con_codigo
    "#{self.codigo_area} | #{self.nombre.upcase}" 
  end
end
