# == Schema Information
#
# Table name: opciones
#
#  id(Identificador de la llave primaria)                                       :integer          not null, primary key
#  aplica_carga_masiva                                                          :string(10)
#  codigo_hex(Color Hexadecimal que identificará la opción)                     :string(255)
#  componente_sidebar(Identificador el componente a utilizar en el sidebar)     :string(255)
#  controlador(Identificador de controlador de navegación)                      :string(300)      not null
#  descripcion(Descripción general de la opción)                                :string(255)
#  estado(Estado de la opción: [A]: Activo  [I]: Inactivo)                      :string(10)       default("A"), not null
#  icono(Icono que identificará la opción)                                      :string(50)
#  nombre(Nombre de la opción)                                                  :string(200)      not null
#  path(Identificador de ruta de navegación)                                    :string(255)      not null
#  posicion(Orden del componente a utilizar en el sidebar)                      :integer
#  visible_sidebar(El componente será visible en el sidebar?)                   :string(1)        default("t")
#  created_at(Fecha y hora al registrar datos)                                  :datetime         not null
#  updated_at(Fecha y hora al actualizar datos)                                 :datetime         not null
#  menu_id(Identificador del menu para la opción)                               :integer          not null
#  user_created_id(Identificador de usuario al registrar en la aplicación web)  :integer          not null
#  user_updated_id(Identificador de usuario al actualizar en la aplicación web) :integer
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
