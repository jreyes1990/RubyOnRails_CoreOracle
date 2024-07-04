# == Schema Information
#
# Table name: font_awesomes
#
#  id(Identificador de la llave primaria)                                       :integer          not null, primary key
#  codigo_css(Identificador codigo CSS del icono)                               :string(25)
#  estado(Estado del FontAwesome: [A]: Activo  [I]: Inactivo)                   :string(10)       default("A"), not null
#  icono(Identificador del icono)                                               :string(50)
#  prefijo_nombre                                                               :string(150)
#  termino                                                                      :string(255)
#  tipo_icono                                                                   :string(50)
#  created_at(Fecha y hora al registrar datos)                                  :datetime         not null
#  updated_at(Fecha y hora al actualizar datos)                                 :datetime         not null
#  user_created_id(Identificador de usuario al registrar en la aplicación web)  :integer          not null
#  user_updated_id(Identificador de usuario al actualizar en la aplicación web) :integer
#
require 'rails_helper'

RSpec.describe FontAwesom, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
