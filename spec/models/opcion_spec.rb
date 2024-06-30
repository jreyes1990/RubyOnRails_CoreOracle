# == Schema Information
#
# Table name: opciones
#
#  id(Identificador de la llave primaria)                                        :integer          not null, primary key
#  aplica_carga_masiva                                                           :string(10)
#  codigo_hex(Color Hexadecimal que identificar?? la opci??n)                    :string(255)
#  controlador(Identificador de controlador de navegaci??n)                      :string(300)      not null
#  descripcion(Descripci??n general de la opci??n)                               :string(255)
#  estado(Estado de la opci??n: [A]: Activo  [I]: Inactivo)                      :string(10)       default("A"), not null
#  icono(Icono que identificar?? la opci??n)                                     :string(50)
#  nombre(Nombre de la opci??n)                                                  :string(200)      not null
#  path(Identificador de ruta de navegaci??n)                                    :string(255)      not null
#  posicion(Orden que tendra cada opci??n)                                       :integer
#  created_at(Fecha y hora al registrar datos)                                   :datetime         not null
#  updated_at(Fecha y hora al actualizar datos)                                  :datetime         not null
#  menu_id(Identificador del menu para la opci??n)                               :integer          not null
#  user_created_id(Identificador de usuario al registrar en la aplicaci??n web)  :integer
#  user_updated_id(Identificador de usuario al actualizar en la aplicaci??n web) :integer          not null
#
# Indexes
#
#  index_opciones_on_menu_id  (menu_id)
#
# Foreign Keys
#
#  fk_opcion_menu  (menu_id => menus.id)
#
require 'rails_helper'

RSpec.describe Opcion, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
