# == Schema Information
#
# Table name: atributos
#
#  id(Identificador de la llave primaria)                                        :integer          not null, primary key
#  descripcion(Descripci??n general del atributo)                                :string(255)
#  estado(Estado del atributo: [A]: Activo  [I]: Inactivo)                       :string(10)       default("A"), not null
#  nombre(Nombre del atributo)                                                   :string(200)      not null
#  created_at(Fecha y hora al registrar datos)                                   :datetime         not null
#  updated_at(Fecha y hora al actualizar datos)                                  :datetime         not null
#  user_created_id(Identificador de usuario al registrar en la aplicaci??n web)  :integer
#  user_updated_id(Identificador de usuario al actualizar en la aplicaci??n web) :integer          not null
#
class Atributo < ApplicationRecord
  has_many :opcion_cas
  
  validates_presence_of :nombre, :estado, message: ": este campo es obligatorio"
  validates :nombre, uniqueness: {case_sensitive: false, scope: [:estado], message: "El Atributo que intenta registrar ya existe" }
end
