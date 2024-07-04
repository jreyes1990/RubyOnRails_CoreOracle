# == Schema Information
#
# Table name: roles
#
#  id(Identificador de la llave primaria)                                       :integer          not null, primary key
#  codigo_hex(Color Hexadecimal que identificará el rol)                        :string(255)      default("#232323")
#  descripcion(Descripción general del rol)                                     :string(255)
#  estado(Estado del rol: [A]: Activo  [I]: Inactivo)                           :string(10)       default("A"), not null
#  nombre(Nombre del rol)                                                       :string(200)      not null
#  slug                                                                         :string(255)
#  created_at(Fecha y hora al registrar datos)                                  :datetime         not null
#  updated_at(Fecha y hora al actualizar datos)                                 :datetime         not null
#  user_created_id(Identificador de usuario al registrar en la aplicación web)  :integer          not null
#  user_updated_id(Identificador de usuario al actualizar en la aplicación web) :integer
#
# Indexes
#
#  index_roles_on_slug  (slug)
#
require 'rails_helper'

RSpec.describe Rol, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
