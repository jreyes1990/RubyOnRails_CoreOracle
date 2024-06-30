# == Schema Information
#
# Table name: personas_areas_views
#
#  id               :integer          not null, primary key
#  codigo_area      :integer
#  codigo_empresa   :integer
#  codigo_hex_area  :string(255)
#  codigo_hex_rol   :string(255)
#  descripcion      :string(255)
#  email_usuario    :string(255)      not null
#  estado           :string(10)
#  nombre_area      :string(200)
#  nombre_empresa   :string(200)
#  nombre_rol       :string(200)
#  nombre_usuario   :string(401)
#  telefono_usuario :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  area_id          :integer          not null
#  empresa_id       :integer          not null
#  persona_id       :integer          not null
#  rol_id           :integer
#  user_created_id  :integer
#  user_id          :integer          not null
#  user_updated_id  :integer
#
class PersonasAreaView < ApplicationRecord
    self.table_name = "personas_areas_views"
    self.primary_key = :id
  
    def readonly?
        true
    end
  end
