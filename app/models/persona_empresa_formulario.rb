# == Schema Information
#
# Table name: persona_empresa_formularios
#
#  id               :integer          not null, primary key
#  descripcion      :string(255)
#  estado           :string(10)
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  opcion_ca_id     :integer          not null
#  personas_area_id :integer          not null
#  user_created_id  :integer
#  user_updated_id  :integer
#
# Indexes
#
#  i_per_emp_for_opc_ca_id   (opcion_ca_id)
#  i_per_emp_for_per_are_id  (personas_area_id)
#
# Foreign Keys
#
#  fk_rails_...  (opcion_ca_id => opcion_cas.id)
#  fk_rails_...  (personas_area_id => personas_areas.id)
#
class PersonaEmpresaFormulario < ApplicationRecord
  belongs_to :personas_area
  belongs_to :opcion_ca
end
