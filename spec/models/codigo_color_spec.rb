# == Schema Information
#
# Table name: codigo_colores
#
#  id(Identificador de la llave primaria)                                        :integer          not null, primary key
#  codigo_hex(Identificador del color, codigo hexadecimal)                       :string(25)
#  codigo_hls(Identificador del color, codigo HLS)                               :string(50)
#  codigo_rgb(Identificador del color, codigo RGB)                               :string(50)
#  colores(Identificador del color)                                              :string(25)
#  disenio                                                                       :string(50)
#  estado(Estado de codigo de colores: [A]: Activo  [I]: Inactivo)               :string(10)       default("A"), not null
#  nombre_color(Nombre del color)                                                :string(100)
#  created_at(Fecha y hora al registrar datos)                                   :datetime         not null
#  updated_at(Fecha y hora al actualizar datos)                                  :datetime         not null
#  user_created_id(Identificador de usuario al registrar en la aplicaci??n web)  :integer
#  user_updated_id(Identificador de usuario al actualizar en la aplicaci??n web) :integer          not null
#
require 'rails_helper'

RSpec.describe CodigoColor, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
