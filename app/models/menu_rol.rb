# == Schema Information
#
# Table name: menu_roles
#
#  id              :integer          not null, primary key
#  descripcion     :string(255)
#  estado          :string(10)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  menu_id         :integer
#  opcion_id       :integer          not null
#  rol_id          :integer          not null
#  user_created_id :integer
#  user_updated_id :integer
#
# Indexes
#
#  index_menu_roles_on_opcion_id  (opcion_id)
#  index_menu_roles_on_rol_id     (rol_id)
#
# Foreign Keys
#
#  fk_rails_...  (opcion_id => opciones.id)
#  fk_rails_...  (rol_id => roles.id)
#
class MenuRol < ApplicationRecord
  belongs_to :opcion
  belongs_to :rol

  validates_presence_of :opcion_id, :rol_id, :estado, message: ": este campo es obligatorio"
  validates :opcion_id, uniqueness: {case_sensitive: false, scope: [:rol_id, :estado], message: "El Menú-Rol que intenta registrar ya existe" }
end
