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
require 'rails_helper'

RSpec.describe Empresa, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
