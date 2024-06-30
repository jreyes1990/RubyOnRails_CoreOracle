# == Schema Information
#
# Table name: opcion_cas_views
#
#  id                 :integer          not null, primary key
#  codigo_hex_menu    :string(255)
#  codigo_hex_opcion  :string(255)
#  controlador_opcion :string(300)      not null
#  descripcion        :string(255)
#  estado             :string(10)
#  icono_menu         :string(50)
#  icono_opcion       :string(50)
#  nombre_atributo    :string(200)
#  nombre_componente  :string(200)
#  nombre_menu        :string(200)
#  nombre_opcion      :string(200)      not null
#  path_opcion        :string(255)      not null
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  atributo_id        :integer          not null
#  componente_id      :integer          not null
#  menu_id            :integer          not null
#  opcion_id          :integer          not null
#  user_created_id    :integer
#  user_updated_id    :integer
#
class OpcionCaView < ApplicationRecord
  self.table_name = "opcion_cas_views"
  self.primary_key = :id

  def readonly?
      true
  end
end
