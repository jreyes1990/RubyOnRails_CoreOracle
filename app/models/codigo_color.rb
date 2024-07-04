# == Schema Information
#
# Table name: codigo_colores
#
#  id(Identificador de la llave primaria)                                       :integer          not null, primary key
#  codigo_hex(Identificador del color, codigo hexadecimal)                      :string(25)
#  codigo_hls(Identificador del color, codigo HLS)                              :string(50)
#  codigo_rgb(Identificador del color, codigo RGB)                              :string(50)
#  colores(Identificador del color)                                             :string(25)
#  disenio                                                                      :string(50)
#  estado(Estado de codigo de colores: [A]: Activo  [I]: Inactivo)              :string(10)       default("A"), not null
#  nombre_color(Nombre del color)                                               :string(100)
#  created_at(Fecha y hora al registrar datos)                                  :datetime         not null
#  updated_at(Fecha y hora al actualizar datos)                                 :datetime         not null
#  user_created_id(Identificador de usuario al registrar en la aplicación web)  :integer          not null
#  user_updated_id(Identificador de usuario al actualizar en la aplicación web) :integer
#
class CodigoColor < ApplicationRecord
    validates_presence_of :colores, :nombre_color, :colores, :codigo_hex, :codigo_rgb, :codigo_hls, message: ": este campo es obligatorio"
    validates :colores, uniqueness: {case_sensitive: false, scope: [:colores, :codigo_hex, :codigo_rgb, :codigo_hls, :estado], message: "El Color que intenta registrar ya existe" }
end
