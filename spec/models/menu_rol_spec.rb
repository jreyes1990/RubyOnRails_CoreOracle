# == Schema Information
#
# Table name: menu_roles
#
#  id(Identificador de la llave primaria)                                        :integer          not null, primary key
#  descripcion(Descripci??n general del men?? por rol)                           :string(255)
#  estado(Estado del men??-rol: [A]: Activo  [I]: Inactivo)                      :string(10)       default("A"), not null
#  created_at(Fecha y hora al registrar datos)                                   :datetime         not null
#  updated_at(Fecha y hora al actualizar datos)                                  :datetime         not null
#  menu_id(Identificador del menu para la opci??n)                               :integer          not null
#  opcion_id(Identificador de la opcion para el men??)                           :integer          not null
#  rol_id(Identificador del rol para el men??-rol)                               :integer          not null
#  user_created_id(Identificador de usuario al registrar en la aplicaci??n web)  :integer          not null
#  user_updated_id(Identificador de usuario al actualizar en la aplicaci??n web) :integer
#
# Indexes
#
#  index_menu_roles_on_menu_id    (menu_id)
#  index_menu_roles_on_opcion_id  (opcion_id)
#  index_menu_roles_on_rol_id     (rol_id)
#
# Foreign Keys
#
#  fk_menurol_menu    (menu_id => menus.id)
#  fk_menurol_opcion  (opcion_id => opciones.id)
#  fk_menurol_rol     (rol_id => roles.id)
#
require 'rails_helper'

RSpec.describe MenuRol, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
