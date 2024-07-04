# == Schema Information
#
# Table name: menu_roles_views
#
#  id                 :integer          not null, primary key
#  codigo_hex_menu    :string(255)
#  codigo_hex_opcion  :string(255)
#  codigo_hex_rol     :string(255)
#  controlador_opcion :string(300)      not null
#  descripcion        :string(255)
#  estado             :string(10)       not null
#  icono_menu         :string(50)       not null
#  icono_opcion       :string(50)
#  menu_codigo        :integer          not null
#  nombre_menu        :string(200)      not null
#  nombre_opcion      :string(200)      not null
#  nombre_rol         :string(200)      not null
#  path_opcion        :string(255)      not null
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  menu_id            :integer          not null
#  opcion_id          :integer          not null
#  rol_id             :integer          not null
#  user_created_id    :integer          not null
#  user_updated_id    :integer
#
class MenuRolView < ApplicationRecord
    self.table_name = "menu_roles_views"
    self.primary_key = :id
  
    def readonly?
      true
    end
  end
