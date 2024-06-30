# == Schema Information
#
# Table name: opciones_views
#
#  id                  :integer          not null, primary key
#  aplica_carga_masiva :string(10)
#  codigo_hex          :string(255)
#  codigo_hex_menu     :string(255)
#  controlador         :string(300)      not null
#  descripcion         :string(255)
#  estado              :string(10)       not null
#  icono               :string(50)
#  icono_menu          :string(50)
#  nombre              :string(200)      not null
#  nombre_menu         :string(200)
#  path                :string(255)      not null
#  posicion            :integer
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  menu_id             :integer          not null
#  user_created_id     :integer
#  user_updated_id     :integer          not null
#
class OpcionView < ApplicationRecord
  self.table_name = "opciones_views"
  self.primary_key = :id

  def readonly?
    true
  end
end
