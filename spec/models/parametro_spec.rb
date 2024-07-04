# == Schema Information
#
# Table name: parametros
#
#  id(Identificador de la llave primaria)                    :integer          not null, primary key
#  nombre_area                                               :string(255)
#  nombre_empresa                                            :string(255)
#  ruta_predeterminada                                       :string(255)
#  view_default                                              :string(255)
#  created_at(Fecha y hora al registrar datos)               :datetime         not null
#  updated_at(Fecha y hora al actualizar datos)              :datetime         not null
#  area_id(Identificador del área para el parámetro)         :integer          not null
#  empresa_id(Identificador de la empresa para el parámetro) :integer          not null
#  user_id(Identificador del usuario para el parámetro)      :integer          not null
#
# Indexes
#
#  index_parametros_on_area_id     (area_id)
#  index_parametros_on_empresa_id  (empresa_id)
#  index_parametros_on_user_id     (user_id)
#
# Foreign Keys
#
#  fk_parametro_area     (area_id => areas.id)
#  fk_parametro_empresa  (empresa_id => empresas.id)
#  fk_parametro_user     (user_id => users.id)
#
require 'rails_helper'

RSpec.describe Parametro, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
