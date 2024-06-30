# == Schema Information
#
# Table name: empresas
#
#  id(Identificador de la llave primaria)                                        :integer          not null, primary key
#  codigo_empresa(Identificador codigo de la empresa)                            :integer          not null
#  codigo_hex(Identificador del color codigo hexadecimal para la empresa)        :string(255)      not null
#  descripcion(Descripci??n general de la empresa)                               :string(255)
#  estado(Estado de la empresa: [A]: Activo  [I]: Inactivo)                      :string(10)       default("A"), not null
#  nombre(Nombre de la empresa)                                                  :string(200)      not null
#  created_at(Fecha y hora al registrar datos)                                   :datetime         not null
#  updated_at(Fecha y hora al actualizar datos)                                  :datetime         not null
#  user_created_id(Identificador de usuario al registrar en la aplicaci??n web)  :integer          not null
#  user_updated_id(Identificador de usuario al actualizar en la aplicaci??n web) :integer
#
class Empresa < ApplicationRecord
  has_many :areas
  
  validates_presence_of :nombre, :estado, message: ": este campo es obligatorio"
  validates :nombre, uniqueness: {case_sensitive: false, scope: [:codigo_empresa, :estado], message: "La Empresa que intenta registrar ya existe" }

  def codigo_nombre_empresa
    "#{self.codigo_empresa}: #{self.nombre}"
  end

  def informacion_empresa
    "CÓDIGO: " + "#{self.codigo_empresa}" + " #{self.nombre.upcase}" 
  end

  def empresa_con_codigo
    "#{self.codigo_empresa} | #{self.nombre.upcase}" 
  end
end
