# == Schema Information
#
# Table name: persona_empresa_form_views
#
#  id                 :integer          not null, primary key
#  codigo_area        :integer
#  codigo_empresa     :integer          not null
#  codigo_hex_area    :string(255)
#  codigo_hex_menu    :string(255)
#  codigo_hex_opcion  :string(255)
#  codigo_hex_rol     :string(255)
#  controlador_opcion :string(300)      not null
#  descripcion        :string(255)
#  email_usuario      :string(255)      not null
#  estado             :string(10)       not null
#  nombre_area        :string(200)
#  nombre_atributo    :string(200)      not null
#  nombre_componente  :string(200)      not null
#  nombre_empresa     :string(200)      not null
#  nombre_menu        :string(200)      not null
#  nombre_opcion      :string(200)      not null
#  nombre_rol         :string(200)
#  nombre_usuario     :string(401)
#  path_opcion        :string(255)      not null
#  area_id            :integer          not null
#  atributo_id        :integer          not null
#  componente_id      :integer          not null
#  empresa_id         :integer          not null
#  menu_id            :integer          not null
#  opcion_ca_id       :integer          not null
#  opcion_id          :integer          not null
#  persona_id         :integer          not null
#  personas_area_id   :integer          not null
#  rol_id             :integer
#  user_id            :integer          not null
#
class PersonaEmpresaFormularioView < ApplicationRecord
  self.table_name = "persona_empresa_form_views"
  self.primary_key = :id

  def readonly?
    true
  end
end
