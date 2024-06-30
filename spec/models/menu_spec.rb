# == Schema Information
#
# Table name: menus
#
#  id(Identificador de la llave primaria)                                        :integer          not null, primary key
#  codigo_hex(Identificador de color, codigo hexadecimal para el men??)          :string(255)      not null
#  descripcion(Descripci??n general del men??)                                   :string(255)
#  estado(Estado del men??: [A]: Activo  [I]: Inactivo)                          :string(10)       default("A"), not null
#  icono(Identificador de icono para el men??)                                   :string(50)       not null
#  nombre(Nombre del men??)                                                      :string(200)      not null
#  created_at(Fecha y hora al registrar datos)                                   :datetime         not null
#  updated_at(Fecha y hora al actualizar datos)                                  :datetime         not null
#  user_created_id(Identificador de usuario al registrar en la aplicaci??n web)  :integer
#  user_updated_id(Identificador de usuario al actualizar en la aplicaci??n web) :integer          not null
#
require 'rails_helper'

RSpec.describe Menu, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
