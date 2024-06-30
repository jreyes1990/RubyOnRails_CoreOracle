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
require 'rails_helper'

RSpec.describe Area, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
