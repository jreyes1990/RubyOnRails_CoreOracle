# == Schema Information
#
# Table name: areas_views
#
#  id                    :integer          not null, primary key
#  codigo_area           :integer
#  codigo_empresa        :integer
#  codigo_hex            :string(255)
#  codigo_hex_empresa    :string(255)
#  codigo_nombre_empresa :string(242)
#  descripcion           :string(255)
#  estado                :string(10)
#  nombre                :string(200)
#  nombre_empresa        :string(200)
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#  empresa_id            :integer          not null
#  user_created_id       :integer
#  user_updated_id       :integer
#
class AreaView < ApplicationRecord
  self.table_name = "areas_views"
  self.primary_key = :id

  def readonly?
    true
  end
end
